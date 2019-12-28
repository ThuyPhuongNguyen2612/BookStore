package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;
import vn.edu.nlu.fit.service.CommentService;
import vn.edu.nlu.fit.service.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/bookDetail")
public class BookDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookID = getBookID(request);

        BookService bookService = new BookServiceImpl();
        CommentService commentService = new CommentServiceImpl();
        try {
            request.setAttribute("book", bookService.getBook(bookID));
            request.setAttribute("comment", commentService.getComments(bookID));
            request.setAttribute("randomBooks", bookService.getRandomBook());
        } catch (SQLException ignored) {
        }
        request.getRequestDispatcher("single.jsp").forward(request, response);
    }

    private int getBookID(HttpServletRequest request) {
        String bookIDString = request.getParameter("bookID");
        return Integer.parseInt(bookIDString);
    }
}
