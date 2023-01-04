package vn.edu.hcmuaf.fit.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.edu.hcmuaf.fit.dao.TransactionDao;
import vn.edu.hcmuaf.fit.model.Cart;

@WebServlet(urlPatterns = { "/thanh-toan" })
public class CheckOutController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.getRequestDispatcher("/index.jsp").forward(req, resp);
		TransactionDao dao = new TransactionDao();
		HttpSession session = req.getSession();

		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null)
			req.getRequestDispatcher("/views/web/checkOut.jsp").forward(req, resp);
		else {
			String name = req.getParameter("ho") + req.getParameter("ten");
			String address = req.getParameter("diachi") + ", " + req.getParameter("thanhpho") + ", "
					+ req.getParameter("quocgia");
			String phone = req.getParameter("phone");
			String email = req.getParameter("email");
			String note = req.getParameter("note");

			dao.createNewTransaction(name, address, phone, email, note, cart.tong_tien_gio());

			req.getRequestDispatcher("/views/web/checkOut.jsp").forward(req, resp);
		}
	}
}
