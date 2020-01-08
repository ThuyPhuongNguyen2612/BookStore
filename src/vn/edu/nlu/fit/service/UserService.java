package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public interface UserService {
    public ArrayList<User> getUsers() throws SQLException;
    public User getUser(String uname, String password) throws SQLException;
    public void addUser(User user) throws SQLException;
    public User getUser(int userID) throws SQLException;
    public void updateUser(int userID, String userName, String name, String phone, Date dob, String address, int gentle) throws SQLException;
}
