package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.model.Product;

public class ListProductDao {
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

	public List<Product> findProduct(String txtSearch) {
		List<Product> list = new ArrayList<>();
		String query = "select pro_id, NAME, price from product where name like ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}

	public Product inforProduct(String id) {
		String query = "select * from product where pro_id = ?";
		try {

			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			Product pro = new Product();
			pro.setName(rs.getString("name"));
			pro.setPrice(rs.getInt("price"));
			pro.setPro_text(rs.getString("pro_text"));
			pro.setQuantity(rs.getInt("quantity"));
			return pro;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}

//	public static void main(String[] args) throws Exception {
//		ListProductDao dao = new ListProductDao();
//		Product pro = dao.inforProduct(39);
//		System.out.println(pro);
//	}

}
