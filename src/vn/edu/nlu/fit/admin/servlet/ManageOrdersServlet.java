package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.OrderService;
import vn.edu.nlu.fit.service.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/orders")
public class ManageOrdersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            OrderService orderService = new OrderServiceImpl();

            try {
                request.setAttribute("orders", orderService.getAllOrders());
                request.getRequestDispatcher("/admin/orders.jsp").forward(request, response);
            } catch (SQLException e) {
                e.getStackTrace();
            }
        }
    }
}
