package web.com.springweb.z01_dto;

import java.util.Date;

public class Favorites {
    private int favoriteId;
    private int userId;
    private int travelId;
    private Date regDate;
	public Favorites() {
		// TODO Auto-generated constructor stub
	}
	public Favorites(int favoriteId, int userId, int travelId, Date regDate) {
		super();
		this.favoriteId = favoriteId;
		this.userId = userId;
		this.travelId = travelId;
		this.regDate = regDate;
	}
	public int getFavoriteId() {
		return favoriteId;
	}
	public void setFavoriteId(int favoriteId) {
		this.favoriteId = favoriteId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
