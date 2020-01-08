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
        String[] availableDate = request.getParameterValues("availableDate");
        SimpleDateFormat availDate = new SimpleDateFormat("dd-MM-yyyy");
        Date dob;
        try {
            dob = availDate.parse(availableDate[0]);
        } catch (ParseException e) {
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
        } catch (SQLException e) {

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
