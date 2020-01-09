package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryService {
    public List<Category> getCategories() throws SQLException;
    public Category getCategory(int categoryID) throws SQLException;
    public int addCategory(String name, int active) throws SQLException;
    public int editCategory(int categoryID, String name, int quantity, int active) throws SQLException;
    public int removeCategory(int categoryID) throws SQLException;
}
