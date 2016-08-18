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

import phsanet.util.ProductFilter;

@Controller
public class TemporaryItemController {
	
	@RequestMapping(value={"/temporary"})
	public String temporary_item(){
		return "/admin/temporary_item";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value={"/temporaryitem"},method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> findAll(ProductFilter filter){
		
		System.out.println("productname "+filter.getProductname());
		System.out.println("subcategory "+filter.getSubcategoryname() +" productname "+ filter.getProductname()+" sub "+filter.getSubcategoryname());
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							"http://localhost:2222/api/temporary?productname="+filter.getProductname()+"&subcategoryname="+filter.getSubcategoryname()
				 							+"& limit="+filter.getLimit(), 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end 
	
}
