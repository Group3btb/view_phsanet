package phsanet.configuration.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	@Qualifier("CustomUserServiceImpl")
	private UserDetailsService userDetailsService;
	
	@Autowired
	private AjaxAuthenticationSuccessHandler successHandler;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService)
			.passwordEncoder(new BCryptPasswordEncoder());
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.successHandler(successHandler)
			.permitAll();
		    
		
		http
			.authorizeRequests()
			.antMatchers("/admin/**").hasAnyRole("ADMIN");
		
		http.logout().logoutUrl("/logout").logoutSuccessUrl("/");
			
		
		http.exceptionHandling().accessDeniedPage("/access-denied");
	}
	
	/*public static void main(String args[]){
		System.out.println(new BCryptPasswordEncoder().encode("12345"));
	}*/
}
