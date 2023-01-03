package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = { "/cay-lay-do" })
public class CayLayGoController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CategoryDAO dao = new CategoryDAO();

		// paging
		String indexPage = req.getParameter("indexPage");
		if (indexPage == null)
			indexPage = "1";
		int index = Integer.parseInt(indexPage);
		List<Product> list = dao.paging(CategoryDAO.CAY_LAY_GO, index);

		int total = dao.getTotalProductByCate(CategoryDAO.CAY_LAY_GO);
		int endPage = total % 9 == 0 ? total / 9 : total / 9 + 1;

		req.setAttribute("cayLayGo", list);
		req.setAttribute("endPage", endPage);
		req.setAttribute("tag", index);

		req.getRequestDispatcher("/views/web/cayLayGo.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
