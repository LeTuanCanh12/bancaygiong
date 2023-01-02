package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.Rating;

public class HomeDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select pro_id, NAME, price from product";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}

	public List<Product> getProductCommon() {
		List<Product> list = new ArrayList<>();
		String query = "select  p.pro_id, p.name ,p.price, avg(r.point) as pro_point, p.quantity from product p join rating r on p.pro_id = r.pro_id  group by p.pro_id order by quantity desc limit 6";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pro = new Product();
				pro.setPro_id(rs.getInt("pro_id"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setRate(new Rating(rs.getFloat("pro_point")));
				list.add(pro);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public List<Product> getProductRating2() {
		List<Product> list = new ArrayList<>();
		String query = "select p.pro_id, p.name, p.price, avg(r.point) as pro_point from product p join rating r on p.pro_id = r.pro_id group by p.pro_id order by pro_point desc limit 6";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pro = new Product();
				pro.setPro_id(rs.getInt("pro_id"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setRate(new Rating(rs.getFloat("pro_point")));
				list.add(pro);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public static void main(String[] args) {
		HomeDao dao = new HomeDao();
		List<Product> list = dao.getProductCommon();
		if (list == null)
			System.out.println("sai");
		else
			for (Product product : list) {

				System.out.println(product);
			}

	}
}
