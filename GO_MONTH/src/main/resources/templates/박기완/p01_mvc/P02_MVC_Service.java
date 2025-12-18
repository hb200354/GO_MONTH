package web.com.springweb.p01_mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.z01_dto.Inquiries;

@Service
public class P02_MVC_Service {
	@Autowired(required=false)
	private P03_MVC_Dao dao;
	public List<Inquiries> getInquiries() {
		return dao.getInquiries();
	}
}
