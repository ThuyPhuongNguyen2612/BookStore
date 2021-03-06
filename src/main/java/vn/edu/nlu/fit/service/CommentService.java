package vn.edu.nlu.fit.service;

import java.sql.SQLException;
import java.util.List;

public interface CommentService {
    List getAllComments() throws  SQLException;
    List getComments(int bookID) throws SQLException;
    void createComment(Integer bookID, int userID, String content) throws SQLException;
}
