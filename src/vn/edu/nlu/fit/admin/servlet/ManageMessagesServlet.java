package vn.edu.nlu.fit.admin.servlet;

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

@WebServlet("/admin/message/*")
public class ManageMessagesServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getPathInfo().equals("/replyMail")){

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MessageService messageService = new MessageServiceImpl();
        if (request.getPathInfo()==null) {
            try{
                request.setAttribute("message", messageService.getMessages());
            } catch (SQLException e){
            }
            request.getRequestDispatcher("mail.jsp").forward(request, response);
        } else if (request.getPathInfo().equals("/replyMail")){
            request.getRequestDispatcher("mail_compose.jsp").forward(request, response);
        }
    }

    public void replyMail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
        response.setCharacterEncoding("UTF-8");
        String recipient = getParameter(request, "email");
        String subject = getParameter(request, "subject");
        String message = getParameter(request, "message");

        try {
            SendMail.sendEmail(host, port, user, pass, recipient, message, subject);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private String getParameter(HttpServletRequest request, String parameterName) {
        return request.getParameter(parameterName) == null ? "" : request.getParameter(parameterName).trim();
    }
}
