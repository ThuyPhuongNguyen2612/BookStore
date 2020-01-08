package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("")
public class IndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString()!=null?"?"+request.getQueryString():""));
        BookService bookService = new BookServiceImpl();
        try {
            request.setAttribute("newBooks", bookService.getNewBook());
            request.setAttribute("highlightedBooks", bookService.getHighlightedBook());
            request.setAttribute("randomBooks", bookService.getRandomBook());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (SQLException ignored) {

        }
    }
}
