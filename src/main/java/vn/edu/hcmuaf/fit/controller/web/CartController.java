package vn.edu.hcmuaf.fit.controller.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.RefreshFailedException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.agent.AgentPremain;

import vn.edu.hcmuaf.fit.Connection.DBContext;
import vn.edu.hcmuaf.fit.dao.CartDao;
import vn.edu.hcmuaf.fit.dao.ListProductDao;
import vn.edu.hcmuaf.fit.model.Product;

/**
 * Servlet implementation class CartController
 */
@WebServlet(urlPatterns = { "/cartProduct" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String id = request.getParameter("pid");
			CartDao dao = new CartDao();
			Product temp = new Product();
			temp = dao.addCart(id);

			conn = new DBContext().getConnection();
			ps = conn.prepareStatement("insert into " 
			+ "cart_pro(cart_id,pro_id,quantity) values(?,?,?)");

			ps.setString(1, "1");
			ps.setInt(1, temp.getPro_id());
			ps.setInt(3, temp.getQuantity());
			ps.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}

		response.setHeader("refresh", "1000");

		request.getRequestDispatcher("/detail").forward(request, response);

	}

	public static void main(String[] args) {

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
