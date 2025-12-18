package web.com.go_month.a03_pkw;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import web.com.go_month.a03_pkw.z01_dto.Inquiries;


public interface P03_MVC_Dao {
	@Select("SELECT * FROM INQUIRIES")
	List<Inquiries> getInquiries();

}
