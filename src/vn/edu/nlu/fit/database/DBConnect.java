package vn.edu.nlu.fit.database;

import java.sql.*;

public class DBConnect {

    public static Connection getConnection(){
        Connection con= null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=utf-8", "root", "");
        } catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
