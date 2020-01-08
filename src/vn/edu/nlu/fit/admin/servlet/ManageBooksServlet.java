package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin/books")
public class ManageBooksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            try {
                BookService bookService = new BookServiceImpl();
                request.setAttribute("books", bookService.getBooks());
                request.getRequestDispatcher("/admin/books.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
