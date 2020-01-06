package vn.edu.nlu.fit.service;

import java.sql.SQLException;
import java.util.List;

public interface OrderService {
    public List getAllOrders() throws SQLException;
}
