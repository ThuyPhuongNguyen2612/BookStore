package vn.edu.nlu.fit.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/order/*")
public class OrderServlet extends HttpServlet {

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
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            response.sendRedirect("/order/address");
        }
    }

    private void orderAddressStep(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        request.getRequestDispatcher("/addAddressForm.jsp").forward(request, response);

    }

    private void orderPaymentStep(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));
        response.sendRedirect("/addPaymentForm.jsp");

    }
}
