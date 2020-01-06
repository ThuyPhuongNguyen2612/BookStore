package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;
import vn.edu.nlu.fit.service.CommentService;
import vn.edu.nlu.fit.service.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/bookDetail/*")
public class BookDetailServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo().equals("/comment")) {
            addComment(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString()!=null?"?"+request.getQueryString():""));
        if (request.getPathInfo() == null) {
            getBookDetailPage(request, response);
        } else if (request.getPathInfo().equals("/comments")) {
            getCommentsHtml(request, response);
        }

    }

    private void getCommentsHtml(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookID = getBookID(request);
        CommentService commentService = new CommentServiceImpl();
        try {
            request.setAttribute("comments", commentService.getComments(bookID));
        } catch (SQLException ignored) {
        }
        request.getRequestDispatcher("/comments.jsp").forward(request, response);
    }

    private void getBookDetailPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookID = getBookID(request);

        BookService bookService = new BookServiceImpl();
        CommentService commentService = new CommentServiceImpl();
        try {
            request.setAttribute("book", bookService.getBook(bookID));
            request.setAttribute("comments", commentService.getComments(bookID));
            request.setAttribute("randomBooks", bookService.getRandomBook());
        } catch (SQLException ignored) {
        }
        request.getRequestDispatcher("single.jsp").forward(request, response);
    }

    private void addComment(HttpServletRequest request, HttpServletResponse response) {
        Integer bookID = Integer.parseInt(request.getParameter("bookID"));
        String content = request.getParameter("content");
        try {
            new CommentServiceImpl().createComment(bookID, getUserID(request), content);
            response.setStatus(200);
        } catch (Exception e) {
            response.setStatus(500);
        }
    }

    private int getUserID(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        return user.getUserID();
    }

    private int getBookID(HttpServletRequest request) {
        String bookIDString = request.getParameter("bookID");
        return Integer.parseInt(bookIDString);
    }
}
