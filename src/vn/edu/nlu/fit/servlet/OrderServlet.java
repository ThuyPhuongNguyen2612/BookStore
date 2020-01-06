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

        if (request.getPathInfo() != null) {
            if (request.getPathInfo().equals("/step1")) {
                orderStep1(request, response);
            } else if (request.getPathInfo().equals("/step2")) {
                orderStep2(request, response);
            } else if (request.getPathInfo().equals("/step3")) {
                orderStep3(request, response);
            }
        }
    }


    private void orderStep1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        if (session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            response.sendRedirect("/order/step2");
        }
    }

    private void orderStep2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));

        request.getRequestDispatcher("addAddressForm.jsp").forward(request, response);

    }

    private void orderStep3(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));
        response.sendRedirect("addPaymentForm.jsp");

    }
}
