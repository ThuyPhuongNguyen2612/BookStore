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
    private Order order;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo() != null) {
            if (request.getPathInfo().equals("/step2")) {
                postOrderStep2(request, response);
            } else if (request.getPathInfo().equals("/step3")) {
                postOrderStep3(request, response);
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        if (request.getPathInfo() != null) {
            if (request.getPathInfo().equals("/step1")) {
                getOrderStep1(request, response);
            } else if (request.getPathInfo().equals("/step2")) {
                getOrderStep2(request, response);
            } else if (request.getPathInfo().equals("/step3")) {
                getOrderStep3(request, response);
            }
        }
    }


    private void getOrderStep1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart.isEmpty()) {
            response.sendRedirect("/cart?error=cartEmpty");
        }
        if (user == null) {
            response.sendRedirect("/login");
        } else {
            order = new Order(user.getUserID(), cart);
            response.sendRedirect("/order/step2");
        }
    }

    private void getOrderStep2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        request.getRequestDispatcher("addAddressForm.jsp").forward(request, response);
    }

    private void getOrderStep3(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));
        response.sendRedirect("addPaymentForm.jsp");

    }

    private void postOrderStep2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = getParameter(request, "name");
        String phone = getParameter(request, "phone");
        String city = getParameter(request, "city");
        String district = getParameter(request, "district");
        String ward = getParameter(request, "ward");
        String address = getParameter(request, "address");
        order.setName(name);
        order.setPhone(phone);
        order.setAddress(city + "," + district + "," + ward + "," + address);
        response.sendRedirect("/order/step3");
    }

    private void postOrderStep3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        order.setPayment("cash");
        request.getRequestDispatcher("endOrder.jsp").forward(request, response);
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
