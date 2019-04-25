package com.cts.holiday_planner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.holiday_planner.bean.User;
import com.cts.holiday_planner.dao.UserDAO;


@Service
@Transactional(propagation=Propagation.SUPPORTS)
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	

	public int registerUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.registerUser(user);
	}

	
	public boolean validateEmail(User user) {
		// TODO Auto-generated method stub
		return userDAO.validateEmail(user);
	}

}
