package com.cts.holiday_planner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.bean.User;
import com.cts.holiday_planner.dao.LoginDAO;

@Service
@Transactional(propagation=Propagation.SUPPORTS)
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	public int authenticateUser(Login login) {
		// TODO Auto-generated method stub
		return loginDAO.authenticateUser(login);
	}


	public User getUserProfile(String id) {
		// TODO Auto-generated method stub
		return loginDAO.getUserProfile(id);
	}

}
