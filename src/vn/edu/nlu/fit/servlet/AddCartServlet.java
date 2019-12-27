package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.Book;
import vn.edu.nlu.fit.model.Cart;
import vn.edu.nlu.fit.service.BookService;
import vn.edu.nlu.fit.service.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;

@WebServlet("/cart/add")
public class AddCartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String bookIDString = request.getParameter("bookID");
        int bookID = 0;
        try {
            bookID = Integer.parseInt(bookIDString);
        } catch (NumberFormatException e) {
            bookID = 0;
        }
        HttpSession session = request.getSession();
        Cart cart;
        if (session.getAttribute("cart") == null) {
            cart = new Cart();
        } else {
            cart = (Cart) session.getAttribute("cart");
        }
        BookService bookService = new BookServiceImpl();
        try {
            Book book = bookService.getBook(bookID);
            cart.add(book);
            session.setAttribute("cart", cart);
            response.setStatus(200);
        } catch (Exception e) {
            response.setStatus(500);
        }
    }
}
