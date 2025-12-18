package web.com.go_month.a03_pkw.z01_dto;

import java.util.Date;

public class Inquiries {
	private int inquiryId;
	private int userId;
	private String inquiryType;
	private String content;
	private Date regDate;
	public Inquiries() {
		// TODO Auto-generated constructor stub
	}
	public Inquiries(int inquiryId, int userId, String inquiryType, String content, Date regDate) {
		super();
		this.inquiryId = inquiryId;
		this.userId = userId;
		this.inquiryType = inquiryType;
		this.content = content;
		this.regDate = regDate;
	}
	public int getInquiryId() {
		return inquiryId;
	}
	public void setInquiryId(int inquiryId) {
		this.inquiryId = inquiryId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getInquiryType() {
		return inquiryType;
	}
	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
