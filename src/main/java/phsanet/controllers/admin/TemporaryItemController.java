package phsanet.controllers.admin;

import java.util.HashMap;
import java.util.Map;


import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Products;
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
		
		String http ="http://localhost:2222/api/temporary?productname=";
		if(filter.getSubcategoryname()==null && filter.getProductname()!=null){
			http="http://localhost:2222/api/temporary?productname="+filter.getProductname();
		}
		
		if(filter.getSubcategoryname()!=null && filter.getProductname()!=null){
			http="http://localhost:2222/api/temporary?productname="+filter.getProductname()+
					"&subcategoryname="+filter.getSubcategoryname();
		}
		
		if(filter.getSubcategoryname()!=null && filter.getProductname()==null){
			http="http://localhost:2222/api/temporary?subcategoryname="+filter.getSubcategoryname();
		}
		
		
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(new HttpHeaders());
		@SuppressWarnings("rawtypes")
		ResponseEntity<Map> response = restTemplate.exchange(
				 							 http, 
				 							HttpMethod.GET, 
				 							request, 
				 							Map.class);
		
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}// end 
	
	
	@SuppressWarnings({ "unused", "rawtypes" })
	@RequestMapping(value={"/temporary"},method = RequestMethod.PUT)
	public ResponseEntity<Map<String,Object>> update(@RequestBody Products product){
		System.out.println(product.getProduct_id()+" product "+product.getSubcategory().getSubcategory_id());
		String http="http://localhost:2222/api/temporary";
		Map<String,Object> map = new HashMap<String,Object>();
		RestTemplate resttemplate = new RestTemplate();
		HttpEntity<Object> request = new HttpEntity<Object>(product,new HttpHeaders());
		ResponseEntity<Map> respone = resttemplate.exchange(http,
				HttpMethod.PUT,
				request,
				Map.class);
		return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
	}
	
	
}
