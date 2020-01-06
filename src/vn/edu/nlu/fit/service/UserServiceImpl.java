package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserServiceImpl implements UserService {
    Connection connection;

    public UserServiceImpl() { connection = DBConnect.getConnection();}

    public User createUserObject(ResultSet rs) throws SQLException {
        User user = new User(rs.getInt("userID"),
            rs.getString("userName"),
            rs.getString("password"),
            rs.getString("name"),
            rs.getString("phone"),
            rs.getString("image"),
            rs.getDate("dob"),
            rs.getInt("gentle"),
            rs.getInt("group"));
        return user;

    }

    @Override
    public ArrayList<User> getUsers() throws SQLException {
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE active = 1");
        ResultSet resultSet = ps.executeQuery();
        ArrayList<User> userArrayList = new ArrayList<>();
        while (resultSet.next()) {
            userArrayList.add(createUserObject(resultSet));
        }
        return userArrayList;
    }

    @Override
    public User getUser(String uname, String password) throws SQLException {
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
        return user;
    }

    @Override
    public void addUser(User user) throws SQLException {
        PreparedStatement ps = connection.prepareStatement("INSERT `user` (userName, `password`, name, `group`, active) VALUES (?, ?,?,1,1)");
        ps.setString(1, user.getUserName());
        ps.setString(2, user.getPassword());
        ps.setString(3, user.getUserName());
    }
}
