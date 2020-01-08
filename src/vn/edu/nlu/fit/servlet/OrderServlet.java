package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.model.Order;
import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/order/*")
public class OrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo() != null) {
            if (request.getPathInfo().equals("/address")) {
                postOrderAddress(request, response);
            } else if (request.getPathInfo().equals("/payment")) {
                postOrderPayment(request, response);
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        if (request.getPathInfo() == null) {
            orderLoginStep(request, response);
        } else {
            if (request.getPathInfo().equals("/address")) {
                orderAddressStep(request, response);
            } else if (request.getPathInfo().equals("/payment")) {
                orderPaymentStep(request, response);
            }
        }
    }


    private void orderLoginStep(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart.isEmpty()) {
                response.sendRedirect("/cart?error=cartEmpty");
            }
            response.sendRedirect("/order/address");
        }
    }

    private void orderAddressStep(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/addAddressForm.jsp").forward(request, response);
        }
    }

    private void orderPaymentStep(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/addPaymentForm.jsp").forward(request, response);
        }

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
        response.sendRedirect("/order/step3");
    }

    private void postOrderPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        order.setPayment("cash");
        session.setAttribute("order", order);
        request.getRequestDispatcher("endOrder.jsp").forward(request, response);
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
