package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface UserService {
    public ArrayList<User> getUsers() throws SQLException;
    public User getUser(String uname, String password) throws SQLException;
    public void addUser(User user) throws SQLException;
}
