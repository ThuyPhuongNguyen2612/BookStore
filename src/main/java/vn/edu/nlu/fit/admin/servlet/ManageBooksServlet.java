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
                String pageString = request.getParameter("page");
                int page = Integer.parseInt(pageString);
                BookService bookService = new BookServiceImpl();
                request.setAttribute("books", bookService.getBooksWithPage(page));
                final int allBooks = bookService.getBooks().size();
                int numberOfPages = (int) (allBooks % 20 == 0 ? allBooks / 20.0 : allBooks / 20.0 + 1);
                request.setAttribute("numberOfPages", numberOfPages);
                request.getRequestDispatcher("/admin/books.jsp").forward(request, response);
            } catch (Exception ignored) {
            }
        }

    }
}
