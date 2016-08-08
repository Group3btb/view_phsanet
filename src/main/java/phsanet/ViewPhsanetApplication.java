package phsanet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages="phsanet")
@SpringBootApplication
public class ViewPhsanetApplication {

	public static void main(String[] args) {
		SpringApplication.run(ViewPhsanetApplication.class, args);
	}
}
