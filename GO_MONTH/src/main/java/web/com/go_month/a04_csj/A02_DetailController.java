package web.com.go_month.a04_csj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A02_DetailController {
	// http://localhost:5052/detail
		@GetMapping("detail")
		public String main(Model d) {
			
			return "a04_csj\\a02_detail";
			
		}
	}
