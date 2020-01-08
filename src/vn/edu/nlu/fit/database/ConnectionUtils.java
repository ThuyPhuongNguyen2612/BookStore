package vn.edu.nlu.fit.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {

    private static final String userName = "root";
    private static final String password = "";

    public static Connection openConnection() throws SQLException, ClassNotFoundException {
        // 1. Load Driver
         Class.forName("com.mysql.jdbc.Driver");

        // 2. Open connection
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore?useUnicode=true&characterEncoding=utf-8", userName, password);
    }
}
