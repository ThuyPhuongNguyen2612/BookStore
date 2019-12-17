package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("")
public class IndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookService bookService = new BookServiceImpl();
        try {
            request.setAttribute("newBooks", bookService.getNewBook());
            request.setAttribute("highlighedBooks", bookService.getHighlightedBook());
            request.setAttribute("randomBooks", bookService.getRandomBook());
        } catch (SQLException ignored) {

        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
