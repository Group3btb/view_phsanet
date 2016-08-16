package phsanet.controllers.admin;

import java.util.Map;

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

import phsanet.entitys.Category;

@Controller
public class SubCategory {
	@RequestMapping(value={"/subcategory"})
	public String category(){
		return "/admin/subcategory";
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/subcategories"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> findAll_subcategories(){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/subcategory", 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end findAll_MainCategories
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value={"/subcategories/{search}"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> search_Categories(@PathVariable("search") String search){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/subcategory/"+search, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	} // end search_MainCategories
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value={"/subcategories"} , method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> save_Categories(@RequestBody Category category){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(category,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/subcategory", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end save_MainCategories
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/subcategories"} , method = RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> update_Categories(@RequestBody Category category){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(category,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/subcategory", 
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
	@RequestMapping(value={"/subcategories/{id}"} , method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> delete_Categories(@PathVariable("id") int id){
		
		System.out.println("maincate ID "+id);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/subcategory/"+id, 
					HttpMethod.DELETE, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
}
