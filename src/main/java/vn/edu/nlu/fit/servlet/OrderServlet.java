package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.model.Order;
import vn.edu.nlu.fit.model.User;
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

@WebServlet("/order/*")
public class OrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            if (request.getPathInfo() != null) {
                if (request.getPathInfo().equals("/address")) {
                    postOrderAddress(request, response);
                } else if (request.getPathInfo().equals("/payment")) {
                    postOrderPayment(request, response);
                }
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        if (request.getPathInfo() == null) {
            orderLoginStep(request, response);
        } else {
            if (session.getAttribute("user") == null) {
                response.sendRedirect("/login");
            } else {
                if (request.getPathInfo().equals("/address")) {
                    orderAddressStep(request, response);
                } else if (request.getPathInfo().equals("/payment")) {
                    orderPaymentStep(request, response);
                } else if (request.getPathInfo().equals("/end")) {
                    endOrder(request, response);
                }
            }
        }
    }


    private void orderLoginStep(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart.isEmpty()) {
                response.sendRedirect("/cart?error=cartEmpty");
            }
            response.sendRedirect("/order/address");

    }

    private void orderAddressStep(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString()!=null?"?"+request.getQueryString():""));
        User user = (User) session.getAttribute("user");
        request.setAttribute("user", user);
        request.getRequestDispatcher("/addAddressForm.jsp").forward(request, response);
    }

    private void orderPaymentStep(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
            session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));
            request.getRequestDispatcher("/addPaymentForm.jsp").forward(request, response);
    }

    private void postOrderAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

            String name = getParameter(request, "name");
            String phone = getParameter(request, "phone");
            String city = getParameter(request, "city");
            String district = getParameter(request, "district");
            String ward = getParameter(request, "ward");
            String address = getParameter(request, "address");
            User user = (User) session.getAttribute("user");
            Cart cart = (Cart) session.getAttribute("cart");
            Order order = new Order(user.getUserID(), cart);
            order.setName(name);
            order.setPhone(phone);
            order.setAddress(city + "," + district + "," + ward + "," + address);
            session.setAttribute("order", order);
            response.sendRedirect("/order/payment");

    }

    private void postOrderPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        order.setPayment("cash");
        session.setAttribute("order", order);
        OrderService orderService= new OrderServiceImpl();
        try {
            orderService.addOrder(order);
            session.setAttribute("cart", null);
            response.setStatus(200);
        } catch (SQLException e){
            response.setStatus(500);
        }

    }

    private void endOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/endOrder.jsp").forward(request, response);
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
