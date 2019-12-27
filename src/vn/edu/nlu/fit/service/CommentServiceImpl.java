package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentServiceImpl implements CommentService {

    @Override
    public List getComments(int bookID)  throws SQLException {
        Connection connection = DBConnect.getConnection();
        List<Comment> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM comment WHERE bookID=?");
        ps.setInt(1,bookID);
        ResultSet rs = ps.executeQuery();
        return list;
    }
}
