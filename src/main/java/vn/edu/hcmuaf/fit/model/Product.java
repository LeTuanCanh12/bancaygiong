package vn.edu.hcmuaf.fit.model;

import java.sql.Date;

public class Product {
	String pro_id;
	String name;
	int price;
	String pro_text;
	int discount_stt;
	double per_discount;
	int quantity;
	int cate_id;
	Date added_date;

	public Product(String pro_id, String name, int price) {
		super();
		this.pro_id = pro_id;
		this.name = name;
		this.price = price;

	}

	public int discount_price() {
		return (int) (price*(1-per_discount));

	}
	public int discount_per() {
		return (int)(Math.round(per_discount *100));

	}
	

	public String getPro_text() {
		return pro_text;
	}

	public void setPro_text(String pro_text) {
		this.pro_text = pro_text;
	}

	public int getDiscount_stt() {
		return discount_stt;
	}

	public void setDiscount_stt(int discount_stt) {
		this.discount_stt = discount_stt;
	}

	public double getPer_discount() {
		return per_discount;
	}

	public void setPer_discount(double per_discount) {
		this.per_discount = per_discount;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCate_id() {
		return cate_id;
	}

	public void setCate_id(int cate_id) {
		this.cate_id = cate_id;
	}

	public Date getAdded_date() {
		return added_date;
	}

	public void setAdded_date(Date added_date) {
		this.added_date = added_date;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Product [pro_id=" + pro_id + ", name=" + name + ", price=" + price + "]";
	}

	public String getPro_id() {
		return pro_id;
	}

	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
