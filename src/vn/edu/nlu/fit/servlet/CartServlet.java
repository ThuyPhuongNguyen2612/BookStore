package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            Cart cart = (Cart) session.getAttribute("cart");
            request.setAttribute("cart", cart);
        } catch (Exception e){
            e.printStackTrace();
        }
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
}
