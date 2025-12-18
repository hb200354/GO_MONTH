package web.com.springweb.p01_mvc;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import web.com.springweb.z01_dto.Inquiries;

public interface P03_MVC_Dao {
	@Select("SELECT * FROM INQUIRIES")
	List<Inquiries> getInquiries();

}
