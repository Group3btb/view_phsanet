package phsanet.controllers.admin;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import phsanet.entitys.User;

@Controller
public class DashboardController {
	@RequestMapping(value={"/admin/dashboard"})
	public String mainPage(@AuthenticationPrincipal User user){
		System.out.println("USER SESION INFORMATION  ===> " + user);
		return "/admin/dashboard";
	}
	
}
