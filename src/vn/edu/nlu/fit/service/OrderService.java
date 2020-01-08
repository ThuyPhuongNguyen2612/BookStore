package vn.edu.nlu.fit.service;

import vn.edu.nlu.fit.model.Order;

import java.sql.SQLException;
import java.util.List;

public interface OrderService {
    public void addOrder(Order order) throws SQLException;
    public List getAllOrders() throws SQLException;
}
