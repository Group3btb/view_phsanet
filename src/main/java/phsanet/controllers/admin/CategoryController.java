package phsanet.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CategoryController {
	@RequestMapping(value={"/category"})
	public String category(){
		return "/admin/category";
	}
}
