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

import phsanet.entitys.Site_Detail_Managerment;

@Controller
public class SiteDetailController {
		
	@RequestMapping(value={"/admin/sitedetail"})	
	public String scrap(){
		return "admin/site_details_url_managerment";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/scrapmanagerment"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> findAll_scrap(){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/sitedetail", 
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
				 							"http://localhost:2222/api/sitedetail/"+search, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	} // end search_MainCategories
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value={"/scrapmanagerment"} , method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> save_scrap(@RequestBody Site_Detail_Managerment scrap){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(scrap,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/sitedetail", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end save_MainCategories
	
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/scrapmanagerment"} , method = RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> update_scrap(@RequestBody Site_Detail_Managerment scrap){
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(scrap,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/sitedetail", 
					HttpMethod.PUT, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/status"} , method = RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> update_status(@RequestBody Site_Detail_Managerment scrap){
		
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(scrap,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/status", 
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
					"http://localhost:2222/api/sitedetail/"+id, 
					HttpMethod.DELETE, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end update_MainCategories
	
	
	

}
