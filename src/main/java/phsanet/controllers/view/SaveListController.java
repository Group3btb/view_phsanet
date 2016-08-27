package phsanet.controllers.view;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Save_List;
import phsanet.entitys.User;

@Controller
public class SaveListController {
	
	@RequestMapping(value={"/savelist"})
	public String mainPage(@AuthenticationPrincipal User user){
		System.out.println("USER SESION INFORMATION  ===> " + user);
		return "/user/savelist";
	}
	
	@RequestMapping(value={"/user/savelist"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> find_savelist(){
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/svaelist", 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		 
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	} // end 
	
	@RequestMapping(value={"/user/savelist"} , method = RequestMethod.POST)
	//@ResponseBody
	public ResponseEntity<Map<String,Object>> save_savelist(@RequestBody Save_List save){
		Map<String,Object> map = new HashMap<String,Object>();
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(save,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/svaelist", 
					HttpMethod.POST, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	@RequestMapping(value={"/user/savelist"} , method = RequestMethod.PUT)
	//@ResponseBody
	public ResponseEntity<Map<String,Object>> update_savelist(@RequestBody Save_List save){
		Map<String,Object> map = new HashMap<String,Object>();
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(save,new HttpHeaders());
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/svaelist", 
					HttpMethod.PUT, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	@RequestMapping(value={"/user/savelist/{id}"} , method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Map<String,Object>> delete_MainCategories(@PathVariable("id") int id){
		
		System.out.println("maincate ID "+id);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
					"http://localhost:2222/api/svaelist/"+id, 
					HttpMethod.DELETE, 
					request, 
					Map.class);
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end 
	
}
