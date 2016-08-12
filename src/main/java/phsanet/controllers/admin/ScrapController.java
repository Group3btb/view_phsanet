package phsanet.controllers.admin;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Scrap_Managerment;

@Controller
public class ScrapController {
		
	@RequestMapping(value={"/scrap"})	
	public String scrap(){
		return "admin/scrap_url_managerment";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/scrapmanagerment"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> findAll_scrap(){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/scrap", 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end findAll_MainCategories
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value={"/scrapmanagerment/{search}"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> search_scrap(@PathVariable("search") String search){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/scrap/"+search, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	} // end search_MainCategories
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value={"/scrapmanagerment"} , method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> save_scrap(@RequestBody Scrap_Managerment scrap){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(scrap,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/scrap", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end save_MainCategories
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/scrapmanagerment"} , method = RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> update_scrap(@RequestBody Scrap_Managerment scrap){
		System.out.println(scrap.getScrap_id()+"  "+scrap.getUrl());
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(scrap,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/scrap", 
					HttpMethod.PUT, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
	
	/***
	 * 
	 * @param id
	 * @return 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/scrapmanagerment/{id}"} , method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> delete_scrap(@PathVariable("id") int id){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/scrap/"+id, 
					HttpMethod.DELETE, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
	
	
	
	
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
}
