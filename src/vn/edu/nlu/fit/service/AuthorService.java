package vn.edu.nlu.fit.service;

import java.sql.SQLException;
import java.util.List;

public interface AuthorService {
    public List getAuthors() throws SQLException;
}
