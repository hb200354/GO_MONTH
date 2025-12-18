package web.com.go_month.a02_ldj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_FallController {
	// http://localhost:5052/fall
	@GetMapping("fall")
	public String main(Model d) {
		
		return "a02_ldj\\a01_fall";
		
	}
}
