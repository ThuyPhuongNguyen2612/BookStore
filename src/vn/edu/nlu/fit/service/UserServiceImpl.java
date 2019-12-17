package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserServiceImpl implements UserService {

    @Override
    public User getUser(String uname, String password) throws SQLException {
        Connection connection = DBConnect.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE active = 1 and userName=? and password=?");
        ps.setString(1,uname);
        ps.setString(2,password);
        ResultSet rs = ps.executeQuery();
        rs.last();
        User user = null;
        if (rs.getRow()==1) {
            rs.first();
            user = new User(rs.getString("userName"),
                    rs.getString("password"),
                    rs.getString("name"),
                    rs.getString("phone"),
                    rs.getString("image"),
                    rs.getDate("dob"),
                    rs.getInt("gentle"));
        }
        return user;
    }
}
