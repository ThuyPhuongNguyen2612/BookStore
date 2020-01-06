package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Book;
import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;
import vn.edu.nlu.fit.service.CategoryService;
import vn.edu.nlu.fit.service.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/products")
public class ListProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString()!=null?"?"+request.getQueryString():""));

        String typeString = request.getParameter("type");
        String pageString = request.getParameter("page");

        int type = Integer.parseInt(typeString);
        int page = Integer.parseInt(pageString);

        CategoryService categoryService = new CategoryServiceImpl();
        BookService bookService = new BookServiceImpl();
        try {
            request.setAttribute("categories", categoryService.getCategories());
            request.setAttribute("newBooks", bookService.getNewBook());
            request.setAttribute("books", bookService.getBooksWithPageType(type, page));
            List<Book> books = bookService.getBooksWithType(type);
            int numberOfPages = (int) (books.size() % 9 == 0 ? books.size() / 9.0 : books.size() / 9.0 + 1);
            request.setAttribute("numberOfPages", numberOfPages);
            request.setAttribute("page", page);
            request.setAttribute("type", type);
        } catch (SQLException ignored) {
        }
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }
}
