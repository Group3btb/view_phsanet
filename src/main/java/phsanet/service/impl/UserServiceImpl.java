package phsanet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.User;

@Service
@Qualifier("CustomUserServiceImpl")
public class UserServiceImpl implements UserDetailsService{

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate restTemplate;
	
	String url = "http://localhost:2222/api/useremail";
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		HttpEntity<String> requestEntity = new HttpEntity<String>(header);
		ResponseEntity<User>  response = restTemplate.exchange(url + "?email=" + username, HttpMethod.GET, requestEntity, User.class);
		System.out.println(response.getBody());
		User user = response.getBody();
		System.out.println("=>user ui: " + user);
		
		if(user==null)
			throw new UsernameNotFoundException("User not found!");
		
		return user;
	}
}
