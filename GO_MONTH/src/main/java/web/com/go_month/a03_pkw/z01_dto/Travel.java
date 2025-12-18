package web.com.go_month.a03_pkw.z01_dto;

import java.util.Date;

public class Travel {
    private int travelId;
    private String travelName;
    private String region;
    private String description;
    private String address;
    private int month;
    private String fileName;
    private Date regDate;
	public Travel() {
		// TODO Auto-generated constructor stub
	}
	public Travel(int travelId, String travelName, String region, String description, String address, int month,
			String fileName, Date regDate) {
		this.travelId = travelId;
		this.travelName = travelName;
		this.region = region;
		this.description = description;
		this.address = address;
		this.month = month;
		this.fileName = fileName;
		this.regDate = regDate;
	}
	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
	public String getTravelName() {
		return travelName;
	}
	public void setTravelName(String travelName) {
		this.travelName = travelName;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
