package phsanet.controllers.view;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ViewController {
	
	@RequestMapping(value={"/","/home","/index"})
	public String index(){
	return "index";	
	}
	
	@RequestMapping(value={"/cat"})
	public String allcat(){
	
		return "category";
	}

	
	@RequestMapping(value={"/user/saved"})
	public String savelist(){
		return "users/index";
	}

	@RequestMapping(value={"/user/profile"})
	public String user(){
		return "users/users";
	}
	
	
}
