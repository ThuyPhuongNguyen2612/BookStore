package vn.edu.nlu.fit.servlet;

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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/account")
public class AccountProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userID = Integer.parseInt(getParameter(request, "userID"));
        String name = getParameter(request, "name");
        String phone = getParameter(request, "phone");
        String email = getParameter(request, "email");
        String gentleString = getParameter(request, "gentle");
        String address = getParameter(request, "address");
        String dobString = request.getParameter("dob");
        SimpleDateFormat availDate = new SimpleDateFormat("dd-MM-yyyy");
        Date dob;
        try {
            dob = availDate.parse(dobString);
        } catch (Exception e) {
            dob = null;
        }
        int gentle;
        if (gentleString.equals("Male")) {
            gentle = 1;
        } else {
            gentle = 2;
        }
        UserService userService = new UserServiceImpl();
        try {
            userService.updateUser(userID, email, name, phone, dob, address, gentle);
            response.sendRedirect("/account?info=account-changed");
        } catch (SQLException e) {
            response.sendRedirect("/account?error=error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPath", request.getRequestURI().concat(request.getQueryString() != null ? "?" + request.getQueryString() : ""));
        try {
            request.setAttribute("user", session.getAttribute("user"));
        } catch (Exception ignored) {
        }
        request.getRequestDispatcher("account.jsp").forward(request, response);
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
