package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.UserService;
import vn.edu.nlu.fit.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/users")
public class ManageUsersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminUser") == null) {
            response.sendRedirect("/admin/login");
        } else {
            UserService userService = new UserServiceImpl();

            try {
                request.setAttribute("users", userService.getUsers());
                request.getRequestDispatcher("/admin/users.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
