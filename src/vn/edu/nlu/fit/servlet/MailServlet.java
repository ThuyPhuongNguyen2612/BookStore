package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.service.MessageService;
import vn.edu.nlu.fit.service.MessageServiceImpl;
import vn.edu.nlu.fit.service.SendMail;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/mail")
public class MailServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        MessageService messageService = new MessageServiceImpl();

        try{
            if (checkEmail(email)) {
                messageService.addMessage(name, email, subject, message);
                request.setAttribute("result", "true");
                request.getRequestDispatcher("mail.jsp").forward(request, response);
            } else {
                request.setAttribute("result", "false");
                request.getRequestDispatcher("mail.jsp").forward(request, response);
            }
        }catch (SQLException e){

        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("mail.jsp").forward(request, response);
    }

    boolean checkEmail(String email) {
        return email.matches("^[A-Za-z0-9.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
    }
}
