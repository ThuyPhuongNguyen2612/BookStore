package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Message;

import java.sql.SQLException;
import java.util.List;

public interface MessageService {
    public List getMessages() throws SQLException;
    public void addMessage(String name, String email, String subject, String message) throws SQLException;
}
