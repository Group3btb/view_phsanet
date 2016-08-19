package phsanet.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
	@RequestMapping(value={"/admin"})
	public String mainPage(){
		return "/admin/dashboard";
	}
}
