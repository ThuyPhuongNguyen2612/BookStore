package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.DBConnect;
import vn.edu.nlu.fit.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryServiceImpl implements CategoryService {

    @Override
    public List<Category> getCategories() throws SQLException {
        Connection connection = DBConnect.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM category");
        ResultSet rs = ps.executeQuery();

        List<Category> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(
                new Category(
                    rs.getInt("categoryID"),
                    rs.getString("name"),
                    rs.getInt("quantity"),
                    rs.getInt("active"))
            );
        }
        return categories;
    }
}
