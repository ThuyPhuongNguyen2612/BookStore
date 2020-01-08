package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.ActiveCodeService;
import vn.edu.nlu.fit.service.ActiveCodeServiceImpl;
import vn.edu.nlu.fit.service.UserService;
import vn.edu.nlu.fit.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/changePassword")
public class ChangePasswordServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("newPassword.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = getParameter(request, "pass");
        String retypePass = getParameter(request, "retypePass");
        String code = getParameter(request, "code");
        String email = getParameter(request, "userName");

        try {
            if (checkPassword(pass, retypePass) && checkCode(email, code)) {
                UserService userService = new UserServiceImpl();
                userService.changePassword(email, pass);
                ActiveCodeService activeCodeService = new ActiveCodeServiceImpl();
                activeCodeService.setCodeIsUsed(email);
                response.sendRedirect("/login?userName="+email);
            } else {
                request.setAttribute("error", "error");
                System.out.println("error");
                response.sendRedirect("/changePassword?userName="+email);
            }
        } catch (SQLException e){
        }
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }

    private boolean checkPassword(String password, String retypePassword) {
        return password.matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$") && password.equals(retypePassword);
    }

    private boolean checkCode(String userName, String code) throws SQLException {
        ActiveCodeService activeCodeService = new ActiveCodeServiceImpl();
        return code.equals(activeCodeService.getCode(userName));
    }
}
