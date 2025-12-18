package web.com.go_month.a03_pkw.z01_dto;

import java.util.Date;

public class TravelAdditionalInfo {
	private int infoId;
	private int travelId;
	private String infoTypeId;
	private String content;
    private Date regDate;
	public TravelAdditionalInfo() {
		// TODO Auto-generated constructor stub
	}
	public TravelAdditionalInfo(int infoId, int travelId, String infoTypeId, String content, Date regDate) {
		super();
		this.infoId = infoId;
		this.travelId = travelId;
		this.infoTypeId = infoTypeId;
		this.content = content;
		this.regDate = regDate;
	}
	public int getInfoId() {
		return infoId;
	}
	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}
	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
	public String getInfoTypeId() {
		return infoTypeId;
	}
	public void setInfoTypeId(String infoTypeId) {
		this.infoTypeId = infoTypeId;
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
