package phsanet.configuration.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component("ajaxAuthenticationSuccessHandler")
public class AjaxAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
			String url = determineTargetUrl(auth);
			System.out.println(url);
			response.sendRedirect(url);
	}
	
	/*
	 * This method extracts the roles of currently logged-in user and returns
	 * appropriate URL according to his/her role.
	 */
	private String determineTargetUrl(Authentication authentication) {
		
		System.out.println("user principal : " + authentication.getPrincipal());
		
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
		}
		return "/index";

	}

	
	/*// Get API User from HttpSession
	private APIUser getAPIUser(){
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		APIUser user = (APIUser) authentication.getPrincipal();
		return user;
	}*/

}
