package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.service.SendMail;
import vn.edu.nlu.fit.service.UserService;
import vn.edu.nlu.fit.service.UserServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String userName = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        response.setCharacterEncoding("UTF-8");

        String email = getParameter(request, "email");
        String password = getParameter(request, "pass");
        String retypePassword = getParameter(request, "retypePass");
        String checkbox = getParameter(request,"checkbox");

        String message = "http://localhost:8080/activeAccount?userName="+email;
        String subject = "[Best store] Active account";

        UserService userService = new UserServiceImpl();
        if (checkEmail(email) && checkPassword(password, retypePassword) && checkCheckBox(checkbox)) {
            User user = new User(email, password);
            try {
                SendMail.sendEmail(host, port, userName, pass, email, message, subject);
                userService.addUser(user);
                request.setAttribute("userName", email);
                response.sendRedirect("/login?notify=activeAccount");
            } catch (Exception  e) {
                response.sendRedirect("/register?error=Mail doesn't send");
            }
        } else {
            response.sendRedirect("/register?error=Email or password is wrong");
        }
    }

    private boolean checkCheckBox(String checkbox) {
        return checkbox.equals("on");
    }

    private boolean checkPassword(String password, String retypePassword) {
        return password.matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$") && password.equals(retypePassword);
    }

    boolean checkEmail(String email) {
        return email.matches("^[A-Za-z0-9.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}