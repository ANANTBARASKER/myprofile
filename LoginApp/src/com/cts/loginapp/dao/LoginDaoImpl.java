package com.cts.loginapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cts.loginapp.bean.LoginBean;
import com.cts.loginapp.util.DBUtils;

public class LoginDaoImpl implements LoginDAO{

                public boolean validateUser(LoginBean bean) {
                                // TODO Auto-generated method stub
                                Connection connection = null;
                                String query = "select username, password from system where username=? and password=?";
                                PreparedStatement preparedStatement = null;
                                ResultSet resultSet = null;
                                
                                
                                try {
                                                connection = DBUtils.getConnection();
                                                preparedStatement = connection.prepareStatement(query);
                                                preparedStatement.setString(1, bean.getUserName());
                                                preparedStatement.setString(2, bean.getPassword());
                                                resultSet = preparedStatement.executeQuery();
                                                if(resultSet.next()) {
                                                                return true;
                                                }
                                                else return false;
                                } catch (SQLException e) {
                                                // TODO Auto-generated catch block
                                                e.printStackTrace();
                                }
                                finally {
                                                DBUtils.closeConnection(connection);
                                }
                                
                                return false;
                }

}
