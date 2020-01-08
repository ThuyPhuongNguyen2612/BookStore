package vn.edu.nlu.fit.admin.servlet;

import vn.edu.nlu.fit.service.CommentService;
import vn.edu.nlu.fit.service.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/admin/comments")
public class ManageCommentsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CommentService commentService = new CommentServiceImpl();
        try{
            request.setAttribute("comments", commentService.getAllComments());
            request.getRequestDispatcher("comment.jsp").forward(request, response);
        } catch (SQLException e){

        }
    }
}
