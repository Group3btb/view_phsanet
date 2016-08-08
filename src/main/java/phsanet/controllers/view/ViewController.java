package phsanet.controllers.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	
	@RequestMapping(value={"/","/home","/index"})
	public String index(){
	return "index";	
	}
}
