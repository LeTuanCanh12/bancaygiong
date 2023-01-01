package vn.edu.hcmuaf.fit.controller.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.hcmuaf.fit.dao.ListProductDao;
import vn.edu.hcmuaf.fit.model.Product;

/**
 * Servlet implementation class ProductInforController
 */
@WebServlet("/detail")
public class ProductInforController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInforController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String id = request.getParameter("pid");
	ListProductDao dao = new ListProductDao();
	Product pro = dao.inforProduct(id);
	
	request.setAttribute("infor", pro);
	request.getRequestDispatcher("/views/web/inforProduct.jsp").forward(request, response);
	}
	public static void main(String[] args) {
		ListProductDao dao = new ListProductDao();
		Product pro = dao.inforProduct("39");
		System.out.println(pro);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
