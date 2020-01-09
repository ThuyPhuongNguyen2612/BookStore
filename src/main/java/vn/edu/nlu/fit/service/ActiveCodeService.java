package vn.edu.nlu.fit.service;

import java.sql.SQLException;

public interface ActiveCodeService {
    public void addCode(String userName, String code) throws SQLException;
    public String getCode(String userName) throws SQLException;
    public void setCodeIsUsed(String userName) throws SQLException;
}
