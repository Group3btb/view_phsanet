package phsanet.controllers.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Temporary_Item;
import phsanet.entitys.Web_Source;

//@EnableScheduling

@Controller
public class TestSelecorController {
	@RequestMapping(value={"/admin/test"})
	public String testscrap(){
		return "admin/test_selector";
	}
	
	@RequestMapping(value={"/test_selector"},method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<Temporary_Item> testt_scrap(@RequestBody Web_Source web){
		try{
			return test_scrap(web);
		}catch(Exception ex){
			
		}
		return null;
	}
	
	private ArrayList<Temporary_Item> test_scrap(Web_Source web) throws IOException{
		
		ArrayList<Temporary_Item> all 		= new ArrayList<>();
		ArrayList<String> all_name 		= new ArrayList<>();
		ArrayList<String> all_image 	= new ArrayList<>();
		ArrayList<String> all_price 	= new ArrayList<>();
		ArrayList<String> all_describe 	= new ArrayList<>();
		
		String url					=	web.getUrl();//"http://www.kaymu.com.kh/women-clothing/";
		String row_selector 		=	web.getSelector_row(); // "div.product";
		String selector_product_name=  	web.getSelector_name();   //"h3.ellipsis";
		String selector_price 		= 	web.getSelector_price();  //"span.price";
		String selector_url_image	=	web.getSelector_image() ;  //"img";
		String selector_descride	=	web.getSelector_description() ; //"p";
		
	
		try {
			
			Document document = Jsoup.connect(url).timeout(10000).get();
			Elements main_selector = document.select(row_selector);
			
			//System.out.println("URL "+web.getUrl());
			/*Connection con = HttpConnection.connect(url)
					.method(Method.POST)
					.da*/
			//System.out.println(main_selector.text());
			
			Elements e_product_name =main_selector.select(selector_product_name);
			for(Element e : e_product_name){
				
				//System.out.println(e.text());
				all_name.add(e.text());
				
			}
			
			Elements e_url_image = main_selector.select(selector_url_image);
			for(Element e: e_url_image){
				/*System.out.println(e.attr("data-layzr"));
				all_image.add(e.attr("data-layzr"));*/
				String img = e.attr("data-layzr").toString().trim();
				//System.out.println("Boolean "+img.compareTo(""));
				if(img.compareTo("")!=0){
					all_image.add(e.attr("data-layzr"));
					//System.out.println(e.attr("data-layzr"));
				}else{
					//System.out.println(e.attr("src"));
					all_image.add(e.attr("src"));
				}
				
				
			}
			//ArrayList<String> price = new ArrayList<String>();
			Elements e_price = main_selector.select(selector_price);
			for(Element e:e_price){
				// System.out.println(e.text());
				all_price.add(e.text());
			}
			
		
			Elements e_descride = main_selector.select(selector_descride);
			for(Element e : e_descride){
				//System.out.println("Detail "+e.attr("href"));
				all_describe.add(e.attr("href"));
			}
		
			int i = 0;
			for(String pro_name : all_name){
				Temporary_Item product = new Temporary_Item();
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
				all.add(product);
				i++;
			}
			System.out.println("All product "+all);	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return all;
	}
		
	@SuppressWarnings("unchecked")
	@ResponseBody
	public ResponseEntity<Map<String,Object>> save_items(Temporary_Item item){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(item,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/producttemporary", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end 
	
	
}
