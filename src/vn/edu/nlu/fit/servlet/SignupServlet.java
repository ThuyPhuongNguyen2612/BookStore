package vn.edu.nlu.fit.servlet;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.User;

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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname")==null?"":request.getParameter("uname").trim();
        String phone = request.getParameter("phone")==null?"":request.getParameter("phone").trim();
        String code = request.getParameter("code")==null?"":request.getParameter("code").trim();
        String pass = request.getParameter("pass")==null?"":request.getParameter("pass").trim();
        String retypePass = request.getParameter("retypePass")==null?"":request.getParameter("retypePass").trim();
        String checkbox = request.getParameter("checkbox");

        boolean checkInf = true;
        String error = "";
        Pattern pat;
        if (uname==null){
            checkInf=false;
        }
        pat = Pattern.compile("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$");
        if (!pat.matcher(uname).matches()){
            checkInf=false;
            error = "Email invalid";
        }
        pat = Pattern.compile("(09|01[2|6|8|9])+([0-9]{8})\\b");
        if (!pat.matcher(phone).matches()){
            checkInf=false;
            error = "Phone invalid";
        }
        if (!retypePass.equals(pass)){
            checkInf=false;
            error = "User name or Password is not true";
        }
        if (!checkbox.equals("checked")){
            checkInf=false;

        }

//        try {
//            if (checkInf){
//                User user = new User(uname,pass,phone);
//            }
//
//
//        } catch (SQLException e){
//            e.printStackTrace();
//        }
    }
}
