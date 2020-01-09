package vn.edu.nlu.fit.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class ConnectionUtils {

    private static final String userName = "rootuser1234";
    private static final String password = "password";

    static Connection openConnection() throws SQLException, ClassNotFoundException {
         Class.forName("com.mysql.jdbc.Driver");

        return DriverManager.getConnection("jdbc:mysql://db4free.net/bookstore1234?useUnicode=true&characterEncoding=utf-8", userName, password);
    }
}
