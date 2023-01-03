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

	public int getTotalProduct() {
		String query = "select count(pro_id) as total from product";
		try {

			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			rs.next();
			int result = rs.getInt("total");
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	public List<Product> paging(int pageIndex) {
		List<Product> list = new ArrayList<>();
		String query = "select  pro_id, NAME, price , per_discount \n" + "from product \n"
				+ "order by pro_id limit ? , 9;";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, (pageIndex-1)*3);
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
		for (Product p : new ListProductDao().paging(2)) {
			System.out.println(p);
		}
	}
}
