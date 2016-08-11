package phsanet.controllers.admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScrapController {
		
	@RequestMapping(value={"/scrap"})	
	public String scrap(){
		return "admin/scrap_url_managerment";
	}
	
}
