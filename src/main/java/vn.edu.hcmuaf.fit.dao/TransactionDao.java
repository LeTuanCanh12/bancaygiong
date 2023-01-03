
package vn.edu.hcmuaf.fit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vn.edu.hcmuaf.fit.Connection.DBContext;

public class TransactionDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public void createNewTransaction(String name, String address, String phone,
			String email, String note, double total) {
		try {
			conn = new DBContext().getConnection();
			String query = "insert into transaction(name, email, phone, address, note, total) values (?,?,?,?,?,?)";
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, address);
			ps.setString(5, note);
			ps.setDouble(6, total);
			ps.executeUpdate();
		} catch (Exception e) {
		}
		
		
	}
	public static void main(String[] args) {
		new TransactionDao().createNewTransaction("a","b", "c","d","e",4.3);
	}
}
