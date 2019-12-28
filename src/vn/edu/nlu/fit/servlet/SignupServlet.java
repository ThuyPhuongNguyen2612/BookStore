package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = getParameter(request, "uname");
        String phone = getParameter(request, "phone");
        String code = getParameter(request, "code");
        String password = getParameter(request, "pass");
        String retypePassword = getParameter(request, "retypePass");
        String checkbox = request.getParameter("checkbox");

        if (checkPhone(phone) && checkEmail(email) && checkPassword(password, retypePassword) && checkCheckBox(checkbox)) {
            User user = new User(email,password,phone);

            request.setAttribute("uname", email);
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            request.setAttribute("error","error");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
    }

    private boolean checkCheckBox(String checkbox) {
        return checkbox.equals("on");
    }

    private boolean checkPassword(String password, String retypePassword) {
        return password.matches("((?=.*[a-z])(?=.*\\\\d)(?=.*[A-Z])(?=.*[@#$%!]).{8,40})") && password.equals(retypePassword) || true;
    }

    boolean checkEmail(String email) {
        return email.matches( "^[A-Za-z0-9.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
    }

    private boolean checkPhone(String phone) {
        return phone.matches("(09|01[2|6|8|9])+([0-9]{8})\\b");
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
