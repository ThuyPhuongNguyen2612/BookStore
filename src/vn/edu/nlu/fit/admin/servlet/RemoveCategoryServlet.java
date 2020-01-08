package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/removeCategory")
public class RemoveCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            String categoryIDString = request.getParameter("categoryID");

            int categoryID;
            try {
                categoryID = Integer.parseInt(categoryIDString);
            } catch (Exception e) {
                categoryID = 0;
            }
            CategoryService categoryService = new CategoryServiceImpl();
            try {
                if (categoryService.removeCategory(categoryID) > 0) {
                    response.setStatus(200);
                } else {
                    response.setStatus(500);
                }
            } catch (SQLException e) {

            }
        }
    }
}
