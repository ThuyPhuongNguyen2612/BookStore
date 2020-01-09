package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/addBook")
public class AddBookServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            try {
                request.setAttribute("categories", new CategoryServiceImpl().getCategories());
                request.getRequestDispatcher("/admin/addBook.jsp").forward(request, response);
            } catch (SQLException ignored) {
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            String image = getParameter(request, "image");
            String name = getParameter(request, "name");
            String author = getParameter(request, "author");
            String price = getParameter(request, "price");
            String amount = getParameter(request, "amount");
            String category = getParameter(request, "category");
            String description = getParameter(request, "description");

            BookService bookService = new BookServiceImpl();
            try {
                if (bookService.addBook(name, image, author, price, amount, category, description) > 0) {
                    response.sendRedirect("/admin/books?page=1&notify=added");
                } else {
                    response.sendRedirect("/admin/addBook?error=true");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
