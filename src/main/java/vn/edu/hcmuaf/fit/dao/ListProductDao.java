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
import vn.edu.hcmuaf.fit.model.Rating;
import vn.edu.hcmuaf.fit.model.UserModel;

public class ListProductDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<>();
		String query = 	"select  p.pro_id, p.name ,p.price, avg(r.point) as pro_point, p.quantity from product p join rating r on p.pro_id = r.pro_id  group by p.pro_id";
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

	public List<Product> getProductSales() {
		List<Product> list = new ArrayList<>();
		 String query =	"select  p.pro_id, p.name ,p.price, avg(r.point) as pro_point, p.per_discount from product p join rating r on p.pro_id = r.pro_id where discount_stt = 1 group by p.pro_id order by per_discount desc";
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
		String query = "select p.pro_id,p.name,p.price,p.pro_text, p.quantity,avg(r.point) as pro_point, u.first_name,r.note from product p join rating r on p.pro_id = r.pro_id  join user u on u.user_id =r.user_id where p.pro_id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			Product pro = new Product();
			Rating ra = new Rating();
			UserModel user = new UserModel();
			pro.setPro_id(rs.getInt("pro_id"));
			pro.setName(rs.getString("name"));
			pro.setPrice(rs.getInt("price"));
			pro.setPro_text(rs.getString("pro_text"));
		
			pro.setQuantity(rs.getInt("quantity"));	
			user.setFirst_name(rs.getString("first_name"));
			ra.setUser_id(user);
			ra.setPoint(rs.getFloat("pro_point"));
			ra.setNote(rs.getString("note"));
			
			pro.setRate(ra);
			return pro;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}
	public static void main(String[] args) {
		ListProductDao dao = new ListProductDao();
		Product test = dao.inforProduct("39");
		System.out.println(test);
				
	}

//	public static void main(String[] args) throws Exception {
//		ListProductDao dao = new ListProductDao();
//		Product pro = dao.inforProduct(39);
//		System.out.println(pro);
//	}

}
