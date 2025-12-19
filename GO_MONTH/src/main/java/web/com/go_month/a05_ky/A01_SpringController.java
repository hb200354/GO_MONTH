package web.com.go_month.a05_ky;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_SpringController {
	// http://localhost:5052/spring
	@GetMapping("spring")
	public String main(Model d) {
		
		return "a05_ky\\a01_springMain";
		
	}
}
