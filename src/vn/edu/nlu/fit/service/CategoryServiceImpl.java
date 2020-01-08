package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.database.GPDataSource;
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
        Connection connection = GPDataSource.getConnection();
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
        GPDataSource.releaseConnection(connection);
        return categories;
    }

    @Override
    public Category getCategory(int categoryID) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("SELECT * FROM category WHERE categoryID=?");
        ps.setInt(1, categoryID);
        ResultSet rs = ps.executeQuery();
        GPDataSource.releaseConnection(connection);
        if (rs.next()) {
            return createCategoryObject(rs);
        } else {
            return null;
        }
    }

    @Override
    public int addCategory(String name, int active) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("INSERT INTO category (`name`,quantity,active) VALUES(?,0,?)");
        ps.setString(1, name);
        ps.setInt(2, active);
        GPDataSource.releaseConnection(connection);
        return ps.executeUpdate();
    }

    @Override
    public int editCategory(int categoryID, String name, int quantity, int active) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps = connection.prepareStatement("UPDATE category SET `name`=?,quantity=?,active=? WHERE categoryID=?");
        ps.setString(1, name);
        ps.setInt(2, quantity);
        ps.setInt(3, active);
        ps.setInt(4, categoryID);
        GPDataSource.releaseConnection(connection);
        return ps.executeUpdate();
    }

    @Override
    public int removeCategory(int categoryID) throws SQLException {
        Connection connection = GPDataSource.getConnection();
        PreparedStatement ps1 = connection.prepareStatement("DELETE FROM category WHERE categoryID=?");
        ps1.setInt(1, categoryID);

        PreparedStatement ps2 = connection.prepareStatement("DELETE FROM book WHERE categoryID=?");
        ps2.setInt(1, categoryID);
        ps2.executeUpdate();
        GPDataSource.releaseConnection(connection);
        return ps1.executeUpdate();
    }

    private Category createCategoryObject(ResultSet rs) throws SQLException {
        return new Category(rs.getInt("categoryID"),
            rs.getString("name"),
            rs.getInt("quantity"),
            rs.getInt("active"));
    }

}
