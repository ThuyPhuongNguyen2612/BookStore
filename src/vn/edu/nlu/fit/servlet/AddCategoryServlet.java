package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Category;
import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/addCategory")
public class AddCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = getParameter(request, "name");
        String activeString = getParameter(request, "active");
        int active = 0;
        if (activeString.equals("on")) {
            active = 1;
        }
        CategoryService categoryService = new CategoryServiceImpl();
        try {
            if (categoryService.addCategory(name, active) > 0) {
                response.sendRedirect("/admin/categories?notify=added");
            } else {
                response.sendRedirect("/admin/addCategory?error=true");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addCategory.jsp").forward(request, response);
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
