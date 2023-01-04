package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.UserDao;
import vn.edu.hcmuaf.fit.model.UserModel;
import vn.edu.hcmuaf.fit.util.Email;
import vn.edu.hcmuaf.fit.util.EmailUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "quen-mat-khau", value = "/quen-mat-khau")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/web/forgot.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            UserDao userDao = new UserDao();
            UserModel userModel = userDao.findByEmail(email);

            if(userModel == null) {
                request.setAttribute("error", "Email are incorrect");
            } else {
                Email email1 = new Email();
                email1.setForm("imhiee6@gmail.com");
                email1.setFromPassword("12345678@gmail");
                email1.setTo(email);
                email1.setSubject("Forgot password Function");
                StringBuffer sb = new StringBuffer();
                sb.append("Dear ").append("You").append("<br>");
                sb.append("You are used the forgot password funtion. <br>");
                sb.append("Regards<br>");
                sb.append("Administrator");

                email1.setContent(sb.toString());
                EmailUtil.send(email1);
                request.setAttribute("message", "Email sent to the email Address. + Please check and get your password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
        }
        request.getRequestDispatcher("/views/web/forgot.jsp").forward(request, response);
    }
}
