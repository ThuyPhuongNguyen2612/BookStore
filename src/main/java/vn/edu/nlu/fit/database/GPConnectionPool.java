package vn.edu.nlu.fit.database;

import java.sql.Connection;

public interface GPConnectionPool {

    Connection getConnection();
    boolean releaseConnection(Connection connection);
}
