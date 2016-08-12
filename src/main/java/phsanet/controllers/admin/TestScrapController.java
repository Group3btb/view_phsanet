package phsanet.controllers.admin;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import phsanet.entitys.Products;
import phsanet.entitys.Web_Source;

//@EnableScheduling

@Controller
public class TestScrapController {
	@RequestMapping(value={"/test"})
	public String testscrap(){
		return "admin/test_scrap";
	}
	
	@RequestMapping(value={"/scrap_test"},method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<Products> testt_scrap(@RequestBody Web_Source web){
		try{
			return scrap_product(web);
		}catch(Exception ex){
			
		}
		return null;
	}
	
	private ArrayList<Products> scrap_product(Web_Source web) throws IOException{
		
		
		
	
		ArrayList<Products> all 		= new ArrayList<>();
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
			System.out.println("URL "+web.getUrl());
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
				System.out.println(e.attr("data-layzr"));
				all_image.add(e.attr("data-layzr"));
				
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
				all_describe.add(e.text());
			}
			
			int i = 0;
			for(String pro_name : all_name){
				Products product = new Products();
				product.setProduct_name(pro_name);
				product.setPrice(all_price.get(i));
				product.setProduct_image(all_image.get(i));
				if(selector_descride!=null&& all_describe.isEmpty()){
					try{
					product.setDescription(all_describe.get(i));
					}catch(Exception ex){}
				}
				all.add(product);
				i++;
			}
			
			/*for(String s :price){
				System.out.println(s);
			}*/
			
			System.out.println("All product "+all);
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return all;
	}
	
	
	
	
	public void s() throws IOException{
		Document doc = Jsoup.connect("http://www.kaymu.com.kh/men-polos/").get();
		Elements elements = doc.select(".product");
		//System.out.println(elements);
		
		for(Element e: elements){
			
			String image = e.select("img").attr("data-layzr");
			String title = e.select(".ellipsis").text();
			String price = e.select(".price").text();
			String link = e.select(".card-overlay").attr("href");
		
			System.out.println(image);
			System.out.println(title);
			System.out.println(price);
			System.out.println(link + "\n");
		}
	}
	
	/*public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
			new TestScrapController().scrap_product(new Web_Source());
		}catch(Exception ex){
			
		}
	}*/
}
