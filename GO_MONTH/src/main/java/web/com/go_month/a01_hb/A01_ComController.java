package web.com.go_month.a01_hb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_ComController {

	
	// Model : 핵심
	// http://localhost:5052/main
	@GetMapping("main")
	public String main(Model d) {
		
		return "a01_hb\\a01_main";
		
	}
}
