package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Book;
import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

@WebServlet("/admin/products")
public class ManageProductsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            BookService bookService = new BookServiceImpl();
            request.setAttribute("books", bookService.getBooks());
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("product.jsp").forward(request,response);
    }
}