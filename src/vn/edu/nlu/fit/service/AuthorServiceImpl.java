package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;
import vn.edu.nlu.fit.model.Author;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AuthorServiceImpl implements AuthorService {

    @Override
    public List getAuthors() throws SQLException {
        try (
            Connection connection = GPDataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM author");
        ) {
            List<Author> list = new ArrayList<Author>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(createAuthorObject(rs));
            }
            GPDataSource.releaseConnection(connection);
            return list;
        }
    }

    private Author createAuthorObject(ResultSet rs) throws SQLException {
        return new Author(rs.getInt("authorID"), rs.getString("name"));
    }
}
