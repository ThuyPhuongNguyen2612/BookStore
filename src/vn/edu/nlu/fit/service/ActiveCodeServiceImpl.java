package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ActiveCodeServiceImpl implements ActiveCodeService{

    @Override
    public void addCode(String userName, String code) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO activecode VALUES (?,?,0)");
        ps.setString(1, userName);
        ps.setString(2, code);
        ps.executeUpdate();
        GPDataSource.releaseConnection(connection);
    }

    @Override
    public String getCode(String userName) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT code FROM activecode WHERE userID=? AND active = 0");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        if (rs.next()){
            return rs.getString("code");
        } else {
            return null;
        }
    }

    @Override
    public void setCodeIsUsed(String userName) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("UPDATE activecode SET active=1 WHERE userName=?");
        ps.setString(1, userName);
        ps.executeUpdate();
        GPDataSource.releaseConnection(connection);
    }
}
