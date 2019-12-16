package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;
import vn.edu.nlu.fit.database.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/products")
public class ListProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");

        try {
            CategoryService categoryService = new CategoryServiceImpl();
            request.setAttribute("listCategories", categoryService.getCategories());

            String sql2 = "SELECT img, name, author, price FROM book WHERE";
            if (type!=null) {
                sql2+=" categoryID="+type;
            }
            PreparedStatement ps2 = DBConnect.getConnection().prepareStatement(sql2);
            ResultSet book = ps2.executeQuery();
            request.setAttribute("book",book);

            request.getRequestDispatcher("web/user/products.jsp").forward(request, response);
//        } catch (ClassNotFoundException e){
//            e.printStackTrace();
//            System.out.println("Class not found");
        } catch (SQLException e){
            e.printStackTrace();
            System.out.println("Connect database error");
        }
    }
}
