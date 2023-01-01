package vn.edu.hcmuaf.fit.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.dao.ListProductDao;
import vn.edu.hcmuaf.fit.model.Product;

@WebServlet(urlPatterns = { "/list-product" })
public class ListProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/listProduct.jsp");

		ListProductDao dao = new ListProductDao();
		List<Product> list = dao.getAllProduct();
		List<Product> listSale = dao.getProductSales();

		req.setAttribute("listSale", listSale);
		req.setAttribute("listPro", list);

		req.getRequestDispatcher("/views/web/listProduct.jsp");

		rd.forward(req, resp);

	}
	

//	public static void main(String[] args) {
//		ListProductDao dao = new ListProductDao();
//		List<Product> listSale = dao.getProductSales();
//		for (Product product : listSale) {
//			System.out.println(product);
//		}
//	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
