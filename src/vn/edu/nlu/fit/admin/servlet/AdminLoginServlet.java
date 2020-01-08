package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/login")
public class AdminLoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        try {
            if (checkAdminUser(userName, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("adminUser", userName);
                response.sendRedirect("/admin");
            } else {
                response.sendRedirect("/admin/login?error=\"Username or Password is wrong\"");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private boolean checkAdminUser(String userName, String password) throws SQLException {
        final User user = new UserServiceImpl().getUser(userName, password);
        return user != null && user.getGroup() > 1;
    }
}
