package phsanet.controllers.view;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import phsanet.entitys.User;

@Controller
public class SaveListController {
	@RequestMapping(value={"/savelist"})
	public String mainPage(@AuthenticationPrincipal User user){
		System.out.println("USER SESION INFORMATION  ===> " + user);
		return "/user/savelist";
	}
	
}
