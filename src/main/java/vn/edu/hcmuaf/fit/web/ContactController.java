package vn.edu.hcmuaf.fit.web;

import vn.edu.hcmuaf.fit.Connection.DBContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class ContactController
 */
@WebServlet(urlPatterns = "/gui-lien-he")
public class ContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public ContactController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		request.getRequestDispatcher("/views/web/home.jsp").forward(request, response);
		response.sendRedirect("/views/web/home.jsp");
	}

	public static void main(String[] args) {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
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


		doGet(request, response);
	}

}
