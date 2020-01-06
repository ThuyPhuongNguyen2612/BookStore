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
    Connection connection;

    public CommentServiceImpl() {
        connection = DBConnect.getConnection();
    }

    @Override
    public List getAllComments() throws SQLException {
        List<Comment> list = new ArrayList<>();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM comment");
        ResultSet resultSet = ps.executeQuery();
        while (resultSet.next()){
            list.add(createCommentObject(resultSet));
        }
        return list;
    }

    @Override
    public List getComments(int bookID) throws SQLException {
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM comment c INNER JOIN `user` u ON c.userID = u.userID WHERE bookID=?");
        List<Comment> list = new ArrayList<>();
        ps.setInt(1, bookID);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(createCommentObject(rs));
        }
        return list;
    }

    @Override
    public void createComment(Integer bookID, int userID, String content) throws SQLException {
        PreparedStatement ps = connection.prepareStatement("INSERT INTO `comment`(bookID, userID, content) VALUES (?, ?, ?)");
        ps.setInt(1, bookID);
        ps.setInt(2, userID);
        ps.setString(3, content);
        ps.executeUpdate();

    }

    private Comment createCommentObject(ResultSet rs) throws SQLException {
        return new Comment(rs.getInt("commentID"),
            rs.getInt("bookID"),
            rs.getInt("userID"),
            rs.getString("userName"),
            rs.getDate("date"),
            rs.getString("content"));
    }
}
