package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MessageServiceImpl implements MessageService {
    Connection connection;

    @Override
    public List getMessages() throws SQLException {
        connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM message");
        ResultSet rs = ps.executeQuery();
        List list = new ArrayList();
        while (rs.next()){
            list.add(createMessageObject(rs));
        }
        GPDataSource.releaseConnection(connection);
        return list;
    }

    @Override
    public void addMessage(String name, String email, String subject, String message) throws SQLException {
        connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO message (name, email, subject, message) VALUES (?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2,email);
        ps.setString(3,subject);
        ps.setString(4,message);
        ps.executeUpdate();
        GPDataSource.releaseConnection(connection);
    }

    public Message createMessageObject(ResultSet rs) throws SQLException{
        return new Message(rs.getInt("messageID"),
                rs.getString("name"),
                rs.getString("subject"),
                rs.getString("email"),
                rs.getString("message"));
    }
}
