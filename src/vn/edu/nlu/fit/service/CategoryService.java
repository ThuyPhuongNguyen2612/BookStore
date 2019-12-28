package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryService {
    List<Category> getCategories() throws SQLException;
}
