package web.com.go_month.a03_pkw;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class P01_MVC_Controller {
	@Autowired
	private P02_MVC_Service service;
	
	// Model : 핵심
	// http://localhost:5052/inquiries
	@GetMapping("inquiries")
	public String getInquiries(Model d) {
		// model : 핵심데이터, view 보낼데이터..
//		d.addAttribute("deptList", service.getDeptList());
		return "a03_pkw/inquiries";
	}

	// http://localhost:5050/tourWinter
	@GetMapping("tourWinter")
	public String tourWinter(Model d) {
		// model : 핵심데이터, view 보낼데이터..
//		d.addAttribute("deptList", service.getDeptList());
		return "a03_pkw/tourWinter";
	}
}
