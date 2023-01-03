package vn.edu.hcmuaf.fit.web;

import vn.edu.hcmuaf.fit.dao.ListProductDao;
import vn.edu.hcmuaf.fit.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class ProductInforController
 */
@WebServlet("/thong-tin-san-pham")
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
	
	ListProductDao daoList = new ListProductDao();
	List<Product> list = daoList.getAllProduct();
	
	
	request.setAttribute("infor", pro);
	
	request.setAttribute("productOther", list);
	
	request.getRequestDispatcher("/views/web/inforProduct.jsp").forward(request, response);

	}
	
	
	public static void main(String[] args) {
		ListProductDao daoList = new ListProductDao();
		List<Product> list = daoList.getAllProduct();
		System.out.println(list);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
