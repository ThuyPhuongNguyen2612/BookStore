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

@WebServlet("/admin/editCategory")
public class EditCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = getParameter(request, "name");
        String quantityString = getParameter(request, "quantity");
        String activeString = getParameter(request, "active");
        int active = 0;
        int quantity = 0;
        if (activeString.equals("on")) {
            active = 1;
        }
        try {
            quantity = Integer.parseInt(quantityString);
        } catch (Exception e){
            quantity = 0;
        }
        CategoryService categoryService = new CategoryServiceImpl();
        try {
            if (categoryService.editCategory(getCategory(request), name, quantity, active) >0){
                response.sendRedirect("/admin/categories?notify=edited");
            } else {
                response.sendRedirect("/admin/editCategory?error=true");
            }
        } catch (SQLException e){
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = new CategoryServiceImpl();
        try{
            Category category = categoryService.getCategory(getCategory(request));
            request.setAttribute("name", category.getName());
            request.setAttribute("quantity", category.getQuantity());
            request.setAttribute("active", category.getActive());
            request.getRequestDispatcher("addCategory.jsp").forward(request,response);
        } catch (SQLException e){
        }
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }

    private int getCategory(HttpServletRequest request){
        String categoryIDString = request.getParameter("categoryID");
        int categoryID;
        try{
            categoryID = Integer.parseInt(categoryIDString);
        } catch (Exception e){
            categoryID = 1;
        }
        return categoryID;
    }
}
