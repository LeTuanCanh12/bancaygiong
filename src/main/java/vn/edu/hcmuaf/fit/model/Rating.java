package vn.edu.hcmuaf.fit.model;

public class Rating {
	String pro_id;
	String user_id;
	float point;
	String note;

	public Rating() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Rating(float point) {
		this.point = point;
		// TODO Auto-generated constructor stub
	}

	public String getPro_id() {
		return pro_id;
	}

	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public float getPoint() {
		return point;
	}

	public void setPoint(float point) {
		this.point = point;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
