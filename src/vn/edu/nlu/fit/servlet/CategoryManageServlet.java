package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/categoriesManage")
public class CategoryManageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryServiceImpl();
        try {
            request.setAttribute("categories", categoryService.getCategories());
        } catch (SQLException e){
            e.getStackTrace();
        }
        request.getRequestDispatcher("admin/categories.jsp").forward(request,response);
    }
}
