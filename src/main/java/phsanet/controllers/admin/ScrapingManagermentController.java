package phsanet.controllers.admin;

import java.util.Map;

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

import phsanet.entitys.Web_Source;

@Controller
public class ScrapingManagermentController {
	
	@RequestMapping(value={"/scrap"})
	public String scrapingmanagerment(){
		return "admin/scraping_managerment";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/startscrap"} , method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> start_scrap(@RequestBody Web_Source web){
		
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(web,new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/startscrap", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/startscrap"} , method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> start_scrap_all(){
		
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/startscrap", 
					HttpMethod.GET, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end
	
	
}
