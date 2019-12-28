package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.User;

import java.sql.SQLException;
import java.util.ArrayList;

public interface UserService {
    ArrayList<User> getUsers() throws SQLException;

    User getUser(String uname, String password) throws SQLException;

    void addUser(User user) throws SQLException;
}
