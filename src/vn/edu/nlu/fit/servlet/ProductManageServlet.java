package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ProductTypeIndex")
public class ProductManageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int type = -1;
//        try{
//            type = Integer.parseInt(request.getParameter("type"));
//
//        }catch (NumberFormatException e){
//            type= -1;
//        }
//        int page = 1;
//        try{
//            page = Integer.parseInt(request.getParameter("page"));
//        }catch (NumberFormatException e) {
//            page=1;
//        }
//        if (page<1) {
//            page=1;
//        }

        try {
            BookService bookService = new BookServiceImpl();
            request.setAttribute("books", bookService.getBooks());

            request.getRequestDispatcher("admin/product.jsp").forward(request, response);
        } catch (SQLException | ServletException e) {
            e.printStackTrace();
        }
    }
}
