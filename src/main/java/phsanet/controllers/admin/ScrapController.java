package phsanet.controllers.admin;
import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScrapController {
		
	@RequestMapping(value={"/scrap"})	
	public String scrap(){
		return "admin/scrap_url_managerment";
	}
	
	
	public void s() throws IOException{
		Document doc = Jsoup.connect("http://www.kaymu.com.kh/men-polos/").get();
		Elements elements = doc.select(".product");
		//System.out.println(elements);
		
		for(Element e: elements){
			String image = e.select("img").attr("data-layzr");
			String title = e.select(".ellipsis").text();
			String price = e.select(".price").text();
			String link = e.select(".card-overlay").attr("href");
		
			System.out.println(image);
			System.out.println(title);
			System.out.println(price);
			System.out.println(link + "\n");
		}
	}
}
