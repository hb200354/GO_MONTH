package web.com.go_month.a04_csj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
	public class A01_summerController {
		// http://localhost:5052/summer
		@GetMapping("summer")
		public String main(Model d) {
			
			return "a04_csj\\a01_summer";
			
		}
		
	}
