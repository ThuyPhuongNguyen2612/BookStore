package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

@WebServlet("/insertProduct")
public class AdminProductsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Book book = new Book();
            String sql = "INSERT INTO book (image, author, description, details, categoryID, price) Values (?, ?, ?,?,?,?)";
            PreparedStatement ps = DBConnect.getConnection().prepareStatement(sql);
            ps.setString(1, book.getImage());
            ps.setString(2, book.getAuthor());
            ps.setString(3, book.getDescription());
            ps.setString(4, book.getDetail());
//            ps.setString(5, book.getCategory());
            ps.setDouble(6, book.getPrice());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
