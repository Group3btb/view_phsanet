package phsanet.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestScrapController {
	@RequestMapping(value={"/test"})
	public String testscrap(){
		return "admin/test_scrap";
	}
}
