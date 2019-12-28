package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/header")
public class HeaderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryServiceImpl();
        try {
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            int amount = 0;
            if (cart != null) {
                amount = cart.getNumberOfBookTitles();
            }
            request.setAttribute("amount", amount);
            request.setAttribute("listCategories", categoryService.getCategories());
            request.getRequestDispatcher("include/header.jsp").include(request, response);
        } catch (SQLException ignored) {
        }
    }
}
