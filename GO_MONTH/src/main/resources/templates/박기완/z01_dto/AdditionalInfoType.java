package web.com.springweb.z01_dto;

import java.util.Date;

public class AdditionalInfoType {
	private String infoTypeId;
	private String infoTypeName;
    private Date regDate;
	public AdditionalInfoType() {
		// TODO Auto-generated constructor stub
	}
	public AdditionalInfoType(String infoTypeId, String infoTypeName, Date regDate) {
		super();
		this.infoTypeId = infoTypeId;
		this.infoTypeName = infoTypeName;
		this.regDate = regDate;
	}
	public String getInfoTypeId() {
		return infoTypeId;
	}
	public void setInfoTypeId(String infoTypeId) {
		this.infoTypeId = infoTypeId;
	}
	public String getInfoTypeName() {
		return infoTypeName;
	}
	public void setInfoTypeName(String infoTypeName) {
		this.infoTypeName = infoTypeName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
