package vn.edu.hcmuaf.fit.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.model.Product;

public class DAO {
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
				list.add(new Product(rs.getString(1), rs.getString(2), rs.getInt(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}

	public List<Product> getProductSales() {
		List<Product> list = new ArrayList<>();
		String query = "select  pro_id, NAME, price , per_discount from product where discount_stt = 1 order by per_discount desc ";
				
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pro = new Product();
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
		DAO dao = new DAO();
		List<Product> list = dao.getAllProduct();
		for (Product product : list) {
			System.out.println(product);
		}
	}
}
