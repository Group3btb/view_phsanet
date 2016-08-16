package phsanet.controllers.admin;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Category;
import phsanet.entitys.Products;
import phsanet.entitys.Scrap_Managerment;
import phsanet.entitys.SubCategory;
import phsanet.entitys.Temporary_Item;
import phsanet.entitys.Web_Source;

@Controller
public class ScrapingManagermentController {
	
	@RequestMapping(value={"/scrap"})
	public String scrapingmanagerment(){
		return "admin/scraping_managerment";
	}
	
	@RequestMapping(value={"/startscrap"} , method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> start_scraping(@RequestBody Web_Source web){
		//System.out.println(web.getWebsite());
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("MESSAGE",web);
		try{
			
			/*this._scraping(web);
			map.put("SUCCESS",true);*/
			
			for(Scrap_Managerment scrap : this.findAll_scrap(web.getWeb_source_id())){
				if(scrap.getStatus().toLowerCase().trim().compareTo("yes")==0){
					System.out.println("product");
						System.out.println(this._scraping(scrap));
						System.out.println(this._scraping(scrap).size());
						this.save_product(this._scraping(scrap));
				}else{
					/*System.out.println("Temporary");
					this._scraping(scrap);*/
				}
			}
			
		}catch(Exception ex){
			map.put("ERROR",false);
			ex.printStackTrace();
		}
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	public boolean save_product(ArrayList<Products> product){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(product,new HttpHeaders());
		@SuppressWarnings({ "unused", "rawtypes" })
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/product", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return true;
	}// end
	
	@SuppressWarnings("unchecked")
	public ArrayList<Scrap_Managerment> findAll_scrap(int id){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		ArrayList<Scrap_Managerment> all_scrap = new ArrayList<>();
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/scrap/"+id, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		
		Map<String, Object> body = (HashMap<String, Object>)response.getBody();
		List<Map<String, Object>> map = (List<Map<String, Object>>) body.get("DATA");
		//System.out.println("==>" + map);
		for(Map<String, Object> scrap: map){
			
			Scrap_Managerment scrap_managerment = new Scrap_Managerment();
			scrap_managerment.setWeb_source(new Web_Source());
			scrap_managerment.setSubcategory(new SubCategory());
			
			System.out.println("scrap_id " + scrap.get("scrap_id"));
			System.out.println("status   " + scrap.get("status"));
			System.out.println("url   " + scrap.get("url"));
			Map<String, Object> web = (Map<String, Object>) scrap.get("web_source");
			System.out.println("web_source_id 		: " +web.get("web_source_id"));
			System.out.println("selector_row  		: " +web.get("selector_row"));
			System.out.println("selector_name 		: " +web.get("selector_name"));
			System.out.println("selector_price		: " +web.get("selector_price"));
			System.out.println("selector_image		: " +web.get("selector_image"));
			System.out.println("selector_description: " +web.get("selector_description"));
			
			Map<String, Object> sub = (Map<String, Object>) scrap.get("subcategory");
			System.out.println("sub : " + sub.get("subcategory_id"));
			
			try{
				scrap_managerment.setStatus((String)scrap.get("status"));
				scrap_managerment.setUrl((String)scrap.get("url"));
				scrap_managerment.getWeb_source().setWeb_source_id(Integer.valueOf(String.valueOf(web.get("web_source_id")).trim()));
				scrap_managerment.getWeb_source().setSelector_row((String)web.get("selector_row"));
				scrap_managerment.getWeb_source().setSelector_name((String)web.get("selector_name"));
				scrap_managerment.getWeb_source().setSelector_price((String)web.get("selector_price"));
				scrap_managerment.getWeb_source().setSelector_image((String)web.get("selector_image"));
				scrap_managerment.getWeb_source().setSelector_description((String)web.get("selector_description"));
				scrap_managerment.getSubcategory().setSubcategory_id(Integer.valueOf(String.valueOf(sub.get("subcategory_id")).trim()));
				all_scrap.add(scrap_managerment);
			}catch(Exception ex){
				System.out.println("Error "+ex.getMessage());
			}
			
		}
		return all_scrap;
		//return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end findAll_MainCategories
	
	
	
	private ArrayList<Products> _scraping(Scrap_Managerment scrap) throws IOException{
		
		
		ArrayList<String> all_name 		= new ArrayList<>();
		ArrayList<String> all_image 	= new ArrayList<>();
		ArrayList<String> all_price 	= new ArrayList<>();
		ArrayList<String> all_describe 	= new ArrayList<>();
		ArrayList<Products> all_product = new ArrayList<Products>(); 
		String url					=	scrap.getUrl();//"http://www.kaymu.com.kh/women-clothing/";
		String row_selector 		=	scrap.getWeb_source().getSelector_row(); // "div.product";
		String selector_product_name=  	scrap.getWeb_source().getSelector_name();   //"h3.ellipsis";
		String selector_price 		= 	scrap.getWeb_source().getSelector_price();  //"span.price";
		String selector_url_image	=	scrap.getWeb_source().getSelector_image() ;  //"img";
		String selector_descride	=	scrap.getWeb_source().getSelector_description() ; //"p";
		int web_source_id 			=   scrap.getWeb_source().getWeb_source_id();
		int subcategory_id 			= 	scrap.getSubcategory().getSubcategory_id();
		
		try {
			
			Document document = Jsoup.connect(url).timeout(10000).get();
			Elements main_selector = document.select(row_selector);
			
			System.out.println("URL "+scrap.getUrl());
			/*Connection con = HttpConnection.connect(url)
					.method(Method.POST)
					.da*/
			//System.out.println(main_selector.text());
			
			Elements e_product_name =main_selector.select(selector_product_name);
			for(Element e : e_product_name){
				
				System.out.println(e.text());
				all_name.add(e.text());
				
			}
			
			Elements e_url_image = main_selector.select(selector_url_image);
			for(Element e: e_url_image){
				/*System.out.println(e.attr("data-layzr"));
				all_image.add(e.attr("data-layzr"));*/
				String img = e.attr("data-layzr").toString().trim();
				System.out.println("Boolean "+img.compareTo(""));
				if(img.compareTo("")!=0){
					all_image.add(e.attr("data-layzr"));
					System.out.println(e.attr("data-layzr"));
				}else{
					System.out.println(e.attr("src"));
					all_image.add(e.attr("src"));
				}
				
			}
			//ArrayList<String> price = new ArrayList<String>();
			Elements e_price = main_selector.select(selector_price);
			for(Element e:e_price){
				 System.out.println(e.text());
				all_price.add(e.text());
			}
		
			Elements e_descride = main_selector.select(selector_descride);
			for(Element e : e_descride){
				System.out.println("Detail "+e.attr("href"));
				all_describe.add(e.attr("href"));
			}
		
			int i = 0;
			for(String pro_name : all_name){
				
				Products product = new Products();
				try{
					product.setWeb(new Web_Source());
					product.getWeb().setWeb_source_id(web_source_id);
				}catch(Exception ex){
					System.out.println("Web "+ex.getMessage());
				}
				try{
					product.setSubcategory(new SubCategory());
					product.getSubcategory().setSubcategory_id(subcategory_id);
				}catch(Exception ex){
					System.out.println("Error sub "+ex.getMessage());
				}
				try{
					product.setProduct_name(pro_name);
				}catch(Exception ex){}
				try{
					product.setPrice(all_price.get(i));
				}catch(Exception ex){}
				try{
					product.setProduct_image(all_image.get(i));	
				}catch(Exception ex){}
				try{
					product.setDescription(all_describe.get(i));	
				}catch(Exception ex){}
				all_product.add(product);
				
				i++;
			}
			System.out.println("All product "+all_product);
			System.out.println("Size "+all_product.size());	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return all_product;
	}
	
}
