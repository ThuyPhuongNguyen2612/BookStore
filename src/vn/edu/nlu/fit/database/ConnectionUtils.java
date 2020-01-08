package vn.edu.nlu.fit.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class ConnectionUtils {

    private static final String userName = "root";
    private static final String password = "";

    static Connection openConnection() throws SQLException, ClassNotFoundException {
         Class.forName("com.mysql.jdbc.Driver");

        return DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=utf-8", userName, password);
    }
}
