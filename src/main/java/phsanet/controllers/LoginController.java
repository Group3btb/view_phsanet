package phsanet.controllers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.User;

@Controller
public class LoginController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate restTemplate;
	
	String url = "http://localhost:2222/api/useremail";
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value="/authentication", method=RequestMethod.POST)
	public String authenticationCustomer(@RequestBody User user){
		
		HttpEntity<String> requestEntity = new HttpEntity<String>(header);
		ResponseEntity<User>  response = restTemplate.exchange(url + "?email=" + user.getEmail(), HttpMethod.GET, requestEntity, User.class);
		System.out.println(response.getBody());
		
		User userDetails = response.getBody();
		
		System.out.println("=>user ui: " + user);
		
		if(user==null){
			throw new UsernameNotFoundException("User not found!");
		}else{
			if(new BCryptPasswordEncoder().matches(user.getPassword(), userDetails.getPassword())){
				
				UsernamePasswordAuthenticationToken auth =
				        new UsernamePasswordAuthenticationToken(userDetails,
				            userDetails.getPassword(),
				            userDetails.getAuthorities());
				
			    auth.setDetails(userDetails);
		
			    SecurityContextHolder.getContext().setAuthentication(auth);
			    
			    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			    
			    String redirectURL = determineTargetUrl(authentication);
			    return redirectURL;
			}
		}
		return "/index";
	}
	
	private String determineTargetUrl(Authentication authentication) {

		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

		List<String> roles = new ArrayList<String>();

		for (GrantedAuthority authority : authorities) {
			System.out.println(authority.getAuthority());
			// authority.getAuthority() ==> ROLE_ADMIN , ROLE_USER
			
			roles.add(authority.getAuthority());
			System.out.println("Extract Role: " + authority.getAuthority());
		}
		
		if (roles.contains("ROLE_ADMIN")) {
			return "/admin/dashboard";
		}else if(roles.contains("ROLE_USER")){
			return "/index";
		}else{
			return "/accessDenied";
		}

	}

}
