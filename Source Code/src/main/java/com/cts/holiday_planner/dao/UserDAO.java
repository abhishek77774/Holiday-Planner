package com.cts.holiday_planner.dao;

import com.cts.holiday_planner.bean.User;

public interface UserDAO {
	
	//to register new user
	public int registerUser(User user);
	
	//to check if the user is already registered or not
	public boolean validateEmail(User user);
	
	
}
