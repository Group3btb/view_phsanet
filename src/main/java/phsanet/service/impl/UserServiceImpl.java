package phsanet.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import phsanet.entitys.Role;
import phsanet.entitys.User;
import phsanet.service.UserService;


@Component
public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("KNONGDAI_API_SECRET_HEADER")
	private HttpHeaders knongDaiSecretHeader;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	@Qualifier("KNONGDAI_API_URL")
	private String knongDaiApiUrl;
	
	@Override
	public User findUserByUserId(String userId) {

		HttpEntity<Object> request = new HttpEntity<Object>(knongDaiSecretHeader);
		
		System.out.println(knongDaiApiUrl+ "/user/"+userId);
		
		ResponseEntity<Map> response = rest.exchange(knongDaiApiUrl+ "/user/"+userId, HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		
		System.out.println(map);
		
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUserId((Integer)data.get("USER_ID"));
			u.setEmail((String)data.get("EMAIL"));
			u.setUsername((String)data.get("USERNAME"));
			u.setPassword((String) data.get("PASSWORD"));
			List<Role> roles = new ArrayList<Role>();
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("ROLES");
			for (Map<String , Object> datas  : dataRole) {
				Role role = new Role();
				role.setRoleId((Integer)datas.get("ROLE_ID"));
				role.setRoleName((String) datas.get("ROLE_NAME"));
				roles.add(role);
			}
			System.out.println(dataRole);
			u.setRoles(roles);
			System.out.println(map);
			return u;
		}
		return null;
	}

	

}
