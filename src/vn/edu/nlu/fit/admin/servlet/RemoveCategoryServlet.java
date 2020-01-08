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

@WebServlet("/admin/removeCategory")
public class RemoveCategoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            String categoryIDString = request.getParameter("categoryId");

            int categoryID;
            try {
                categoryID = Integer.parseInt(categoryIDString);
                CategoryService categoryService = new CategoryServiceImpl();
                categoryService.removeCategory(categoryID);
                response.setStatus(200);
            } catch (Exception e) {
                response.setStatus(500);
            }
        }
    }
}
