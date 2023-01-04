package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.model.Product;

public class CategoryDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public static final int CAY_AN_QUA = 1;
	public static final int CAY_CONG_NGHIEP = 2;
	public static final int CAY_LAY_GO = 3;

	public List<Product> getProductByCate(int cate_id) {
		List<Product> list = new ArrayList<>();
		String query = "select pro_id, NAME, price from product where cate_id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, cate_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt("pro_id"), rs.getString("name"), rs.getInt("price")));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public int getTotalProductByCate(int cate_id) {
		String query = "select count(pro_id) as total from product where cate_id = ?";
		try {

			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, cate_id);
			rs = ps.executeQuery();
			rs.next();
			int result = rs.getInt("total");
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	
	public List<Product> paging(int cate_id, int pageIndex){
		List<Product> list = new ArrayList<>();
		String query = "select  pro_id, NAME, price , per_discount \r\n"
				+ "from product where cate_id = ? limit ? , 9";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, cate_id);
			ps.setInt(2, (pageIndex-1)*3);
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
		System.out.println(new CategoryDAO().getTotalProductByCate(CAY_AN_QUA));
	}

}
