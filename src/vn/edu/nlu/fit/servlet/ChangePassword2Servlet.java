package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.service.ActiveCodeService;
import vn.edu.nlu.fit.service.ActiveCodeServiceImpl;
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

@WebServlet("/changePassword2")
public class ChangePassword2Servlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String password = getParameter(request, "password");
        String newPassword = getParameter(request, "newPassword");
        String retypePassword = getParameter(request, "retypePassword");
        User user = (User) session.getAttribute("user");
        String email = user.getUserName();
        try {
            if (checkPassword(password, newPassword, retypePassword)) {
                UserService userService = new UserServiceImpl();
                userService.changePassword(email, newPassword);
                response.sendRedirect("/account?info=password-changed");
            } else {
                request.setAttribute("error", "error");
                response.sendRedirect("/account?error=error");
            }
        } catch (SQLException e) {
        }
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }

    private boolean checkPassword(String password, String newPassword, String retypePassword) {
        return newPassword.equals(retypePassword);
    }
}
