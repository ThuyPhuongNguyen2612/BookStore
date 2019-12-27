package vn.edu.nlu.fit.service;

import java.sql.SQLException;
import java.util.List;

public interface CommentService {
    public List getComments(int bookID) throws SQLException;
}
