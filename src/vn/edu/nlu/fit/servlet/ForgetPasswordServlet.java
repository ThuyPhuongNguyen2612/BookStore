package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.SendMail;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet("/forgotPassword")
public class ForgetPasswordServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
        response.setCharacterEncoding("UTF-8");
        String recipient = request.getParameter("email");
        String name = recipient;
        String message = "http://localhost:8080/changePassword?qwe="+autoCode()+"\nCode: "+autoCode();

        try {
            SendMail.sendEmail(host, port, user, pass, recipient, name, message);
            if (checkEmail(recipient)) {
                request.setAttribute("resultSend", "true");
            } else {
                request.setAttribute("error", "Your email is wrong!");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("resultSend", "false");
        }
        request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
    }

    public boolean checkEmail(String email) {
        return email.matches("^[A-Za-z0-9.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
    }

    public String autoCode() {
        int leftLimit = 32;
        int rightLimit = 122;
        int targetStringLength = 15;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int)
                    (random.nextFloat() * (rightLimit - leftLimit + 1));
            buffer.append((char) randomLimitedInt);
        }
        return buffer.toString();
    }
}
