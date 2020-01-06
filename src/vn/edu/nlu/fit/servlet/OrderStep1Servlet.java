package vn.edu.nlu.fit.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/order/step1")
public class OrderStep1Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString()!=null?"?"+request.getQueryString():""));
        if (session.getAttribute("user")==null){
            response.sendRedirect("/login");
        } else {
            response.sendRedirect("/order/step2");
        }
    }


}
