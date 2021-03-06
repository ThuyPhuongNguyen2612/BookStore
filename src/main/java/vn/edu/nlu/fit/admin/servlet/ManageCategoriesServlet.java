package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.CategoryServiceImpl;
import vn.edu.nlu.fit.service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/categories")
public class ManageCategoriesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            CategoryService categoryService = new CategoryServiceImpl();

            try {
                request.setAttribute("categories", categoryService.getCategories());
                request.getRequestDispatcher("/admin/categories.jsp").forward(request, response);
            } catch (SQLException e) {
                e.getStackTrace();
            }
        }

    }
}
