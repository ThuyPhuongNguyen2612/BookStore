package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.service.UserService;
import vn.edu.nlu.fit.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =  request.getSession();
        if (session.getAttribute("user")==null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            response.sendRedirect("/");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("user")==null) {
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            UserService userService = new UserServiceImpl();
            try {
                User user = userService.getUser(uname, pass);
                if (user != null) {

                    session.setAttribute("user", user);
                    if (user.getGroup() > 1) session.setAttribute("adminUser", user.getUserName());
                    response.sendRedirect((String) session.getAttribute("currentPath"));
                } else {
                    response.sendRedirect("/login?error=\"Username or Password is wrong\"");
                }
            } catch (SQLException ignored) {

            }
        } else {
            response.sendRedirect("/");
        }
    }
}
