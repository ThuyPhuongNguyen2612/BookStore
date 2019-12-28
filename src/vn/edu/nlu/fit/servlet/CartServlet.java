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

@WebServlet("/cart/*")
public class CartServlet extends HttpServlet {

    private static final String CART = "cart";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path==null){
            getCartPage(request, response);
        } else {
            switch (path) {
                case "/add":
                    addBookItemToCart(request, response);
                    break;
                case "/removeAll":
                    removeAllItemsOfABookFromCart(request, response);
                    break;
                case "/removeOne":
                    removeBookItemFromCart(request, response);
                    break;
            }
        }
    }

    private void removeAllItemsOfABookFromCart(HttpServletRequest request, HttpServletResponse response) {
        int bookID = getBookID(request);
        HttpSession session = request.getSession();
        Cart cart =  (Cart) session.getAttribute(CART);
        try {
            Book book = ((BookService) new BookServiceImpl()).getBook(bookID);
            cart.removeAll(book);
            session.setAttribute(CART, cart);
            response.setStatus(200);
        } catch (Exception e) {
            response.setStatus(500);
        }
    }

    private void removeBookItemFromCart(HttpServletRequest request, HttpServletResponse response) {
        int bookID = getBookID(request);
        HttpSession session = request.getSession();
        Cart cart =  (Cart) session.getAttribute(CART);
        try {
            Book book = ((BookService) new BookServiceImpl()).getBook(bookID);
            cart.removeOne(book);
            session.setAttribute(CART, cart);
            response.setStatus(200);
        } catch (Exception e) {
            response.setStatus(500);
        }
    }

    private void addBookItemToCart(HttpServletRequest request, HttpServletResponse response) {
        int bookID = getBookID(request);
        HttpSession session = request.getSession();
        Cart cart = getCartFromSession(session);
        try {
            Book book = ((BookService) new BookServiceImpl()).getBook(bookID);
            cart.add(book);
            session.setAttribute(CART, cart);
            response.setStatus(200);
        } catch (Exception e) {
            response.setStatus(500);
        }
    }

    private void getCartPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart = getCartFromSession(request.getSession());
        request.setAttribute(CART, cart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    private int getBookID(HttpServletRequest request) {
        String bookIDString = request.getParameter("bookID");
        return Integer.parseInt(bookIDString);
    }

    private Cart getCartFromSession(HttpSession session) {
        Cart cart = new Cart();
        if (session.getAttribute(CART) != null) {
            cart = (Cart) session.getAttribute(CART);
        }
        return cart;
    }
}
