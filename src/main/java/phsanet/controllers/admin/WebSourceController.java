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

import phsanet.entitys.Web_Source;

@Controller
public class WebSourceController {
	
	@RequestMapping(value={"/site"})
	public String siteManagerment(){
		return "/admin/site_managerment";
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/sitemanagerment"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> findAll_site(){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/web", 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end findAll_MainCategories
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value={"/sitemanagerment/{search}"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> search_site(@PathVariable("search") String search){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/category/"+search, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	} // end search_MainCategories
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value={"/sitemanagerment"} , method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> save_site(@RequestBody Web_Source web){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(web,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/web", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end save_MainCategories
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/sitemanagerment"} , method = RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> update_site(@RequestBody Web_Source web){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(web,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/web", 
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
	@RequestMapping(value={"/sitemanagerment/{id}"} , method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> delete_site(@PathVariable("id") int id){
	
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/web/"+id, 
					HttpMethod.DELETE, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
	

}
