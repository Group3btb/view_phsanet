package phsanet.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteManagerController {
	@RequestMapping(value={"/sitemanagerment"})
	public String siteManagerment(){
		return "/admin/site_managerment";
	}
}
