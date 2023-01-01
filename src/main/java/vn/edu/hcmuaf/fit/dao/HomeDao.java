package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.model.Product;

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
		String query ="select pro_id, NAME, price, per_discount , quantity from product order by quantity desc limit 6";
				
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pro = new Product();
				pro.setPro_id(rs.getInt("pro_id"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setPer_discount(rs.getDouble("per_discount"));
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
		System.out.println(list);
		
	}
}
