package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.database.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Pattern;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname")==null?"":request.getParameter("uname").trim();
        String phone = request.getParameter("phone")==null?"":request.getParameter("phone").trim();
        String code = request.getParameter("code")==null?"":request.getParameter("code").trim();
        String email = request.getParameter("email")==null?"":request.getParameter("email").trim();
        String pass = request.getParameter("pass")==null?"":request.getParameter("pass").trim();
        String retype_pass = request.getParameter("retype_pass")==null?"":request.getParameter("retype_pass").trim();
        String checkbox = request.getParameter("checkbox");

        boolean checkInf = true;
        String error = "";
        Pattern pat;
        if (uname==null){
            checkInf=false;
        }
        pat = Pattern.compile("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$");
        if (!pat.matcher(email).matches()){
            checkInf=false;
            error = "Email invalid";
        }
        pat = Pattern.compile("(09|01[2|6|8|9])+([0-9]{8})\\b");
        if (!pat.matcher(phone).matches()){
            checkInf=false;
            error = "Phone invalid";
        }
        if (!retype_pass.equals(pass)){
            checkInf=false;
            error = "User name or Password is not true";
        }
        if (!checkbox.equals("checked")){
            checkInf=false;

        }

        try {
            if (checkInf){
                PreparedStatement psupdate = DBConnect.getConnection().prepareStatement("INSERT INTO user(UserID, UserName, Password, Email, Phone) VALUES ("+4+"?,?,?,?,?)");
                psupdate.setString(1,uname);
                psupdate.setString(2,pass);
                psupdate.setString(3,uname);
                psupdate.setString(4,email);
                psupdate.setString(5,phone);
                psupdate.executeUpdate();
            } else {
                request.setAttribute("err","<div class=\"alert alert-danger\" role=\"alert\">\n" +
                        "            <strong>Error </strong>User name or Password is not true!\n" +
                        "        </div>");
                request.getRequestDispatcher("web/user/register.jsp").forward(request, response);
            }

        } catch (SQLException e){
            e.printStackTrace();
        }
    }
}
