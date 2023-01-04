package vn.edu.hcmuaf.fit.controller.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.Connection.DBContext;

/**
 * Servlet implementation class ContactController
 */
@WebServlet("/gui-lien-he")
public class ContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
//			mo ket noi
			conn = new DBContext().getConnection();
			Statement stmt = null;
//			lay du lieu nguoi dung
			String name = request.getParameter("name");
			int phone = Integer.parseInt(request.getParameter("phone"));
			String mail = request.getParameter("email");
			String content = request.getParameter("note");
			
//			khoi tao lenh
			String sql = "INSERT INTO contact value" + "('" + name + "'" + "," + phone + ",'" + mail + "'" + ",'"
					+ content + "'" + ");";
			stmt.executeUpdate(sql);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.getRequestDispatcher("/views/web/contact.jsp").forward(request, response);
	}

	public static void main(String[] args) {
		String name = "canh";
		String mail = "aaa";
		String content = "bbb";
		int phone = 020202;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
