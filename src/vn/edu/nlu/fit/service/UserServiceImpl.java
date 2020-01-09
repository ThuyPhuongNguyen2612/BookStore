package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class UserServiceImpl implements UserService {

    private User createUserObject(ResultSet rs) throws SQLException {
        return new User(rs.getInt("userID"),
            rs.getString("userName"),
            rs.getString("password"),
            rs.getString("name"),
            rs.getString("phone"),
            rs.getString("image"),
            rs.getDate("dob"),
            rs.getString("address"),
            rs.getInt("gentle"),
            rs.getInt("group"));
    }

    @Override
    public ArrayList<User> getUsers() throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE active = 1");
        ResultSet resultSet = ps.executeQuery();
        ArrayList<User> userArrayList = new ArrayList<>();
        while (resultSet.next()) {
            userArrayList.add(createUserObject(resultSet));
        }
        GPDataSource.releaseConnection(connection);
        return userArrayList;

    }

    @Override
    public User getUser(String uname, String password) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE active = 1 and userName=? and password=?");
        ps.setString(1, uname);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        rs.last();
        User user = null;
        if (rs.getRow() == 1) {
            rs.first();
            user = createUserObject(rs);
        }
        GPDataSource.releaseConnection(connection);
        return user;
    }

    @Override
    public void addUser(User user) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT `user` (userName, `password`, name,image, `group`, active) VALUES (?, ?,?,'img/avatar.png',1,0)");
        ps.setString(1, user.getUserName());
        ps.setString(2, user.getPassword());
        ps.setString(3, user.getUserName());
        GPDataSource.releaseConnection(connection);
        ps.executeUpdate();
    }

    @Override
    public User getUser(int userID) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE userID=?");
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        return createUserObject(rs);
    }

    @Override
    public void updateUser(int userID, String userName, String name, String phone, Date dob, String address, int gentle) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("UPDATE user SET userName=?, name =?, phone=?, dob=?, address=?, gentle=? WHERE userID=?");
        ps.setString(1, userName);
        ps.setString(2, name);
        ps.setString(3, phone);
        ps.setDate(4, new java.sql.Date(dob.getTime()));
        ps.setString(5, address);
        ps.setInt(6, gentle);
        ps.setInt(7, userID);
        GPDataSource.releaseConnection(connection);
        ps.executeUpdate();
    }

    @Override
    public void changePassword(String userName, String password) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("UPDATE user SET password=? WHERE userName=?");
        ps.setString(1, password);
        ps.setString(2, userName);
        ps.executeUpdate();
        GPDataSource.releaseConnection(connection);
    }

    @Override
    public void activeAccount(String userName) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("UPDATE user SET active=1 WHERE userName=?");
        ps.setString(1, userName);
        ps.executeUpdate();
        GPDataSource.releaseConnection(connection);
    }
}
