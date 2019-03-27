package com.cts.loginapp.service;

import com.cts.loginapp.bean.LoginBean;
import com.cts.loginapp.dao.LoginDAO;
import com.cts.loginapp.dao.LoginDaoImpl;

public class LoginServiceImpl implements LoginService{

                LoginDAO loginDAO = new LoginDaoImpl();
                public boolean validateUser(LoginBean bean) {
                               // TODO Auto-generated method stub
                                return loginDAO.validateUser(bean);
                }

}

