package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.ActiveCodeService;
import vn.edu.nlu.fit.service.ActiveCodeServiceImpl;
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

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        response.setCharacterEncoding("UTF-8");
        String recipient = request.getParameter("email");
        String code = autoCode();
        String message = "Code: "+code;
        String subject = "Best store change password";
        ActiveCodeService activeCodeService = new ActiveCodeServiceImpl();

        try {
            if (checkEmail(recipient)) {
                SendMail.sendEmail(host, port, user, pass, recipient, message, subject);
                activeCodeService.addCode(recipient, code);
                request.getRequestDispatcher("/changePassword?userName="+recipient).forward(request, response);
            } else {
                response.sendRedirect("/forgotPassword?error=error");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }



    private boolean checkEmail(String email) {
        return email.matches("^[A-Za-z0-9.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
    }

    private String autoCode() {
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
