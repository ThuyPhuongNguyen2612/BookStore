package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    public User getUser(String uname, String password) throws SQLException;
}
