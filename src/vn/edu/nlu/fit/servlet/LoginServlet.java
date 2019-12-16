package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.model.User;
import vn.edu.nlu.fit.database.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String sql = "SELECT * FROM user WHERE UserName=? AND Password=? AND Active=1";
        ResultSet rs = null;
        try{
            PreparedStatement psupdate = DBConnect.getConnection().prepareStatement(sql);
            psupdate.setString(1, uname);
            psupdate.setString(2, pass);
            rs = psupdate.executeQuery();
            rs.last();
            if (rs!=null & rs.getRow()==1){
                User u = new User();
//                u.setUname(rs.getString("UserName"));
//                u.setPass(rs.getString("Password"));
//                u.setActive(rs.getInt("Active"));
//                u.setIdgroup(rs.getInt("Group"));
//                u.setId(rs.getInt("UserID"));
                HttpSession session = request.getSession();
                session.setAttribute("user",u);
                request.getRequestDispatcher("web/user/index.jsp").forward(request, response);
            } else{
//                request.setAttribute("err", "Wrong email or password");
//                request.getRequestDispatcher("web/user/login.jsp").forward(request, response);
                response.setContentType("text/plain");
                response.getWriter().print("wrong");
            }
        } catch ( SQLException e){
            e.printStackTrace();
            System.out.println("Lỗi kết nói tới database");
            request.setAttribute("err", "Sai Username hoặc Password");
            request.getRequestDispatcher("web/user/login.jsp").forward(request, response);
        }
    }
}
