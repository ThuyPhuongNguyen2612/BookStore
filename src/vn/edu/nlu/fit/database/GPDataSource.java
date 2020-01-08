package vn.edu.nlu.fit.database;

import java.sql.Connection;

public class GPDataSource {

    public static final int DB_MAX_CONNECTIONS = 100;

    private static final GPConnectionPool gpPool = new GPConnectionPoolImpl(DB_MAX_CONNECTIONS);

    private GPDataSource() {
        super();
    }

    public static Connection getConnection() {
        Connection connection = gpPool.getConnection();
        System.out.println("GPPool status: " + gpPool);
        return connection;
    }

    public static boolean releaseConnection(Connection connection) {
        return gpPool.releaseConnection(connection);
    }
}