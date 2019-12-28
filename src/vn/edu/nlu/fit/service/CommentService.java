package vn.edu.nlu.fit.service;

import java.sql.SQLException;
import java.util.List;

public interface CommentService {
    List getComments(int bookID) throws SQLException;
}
