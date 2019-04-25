package com.cts.holiday_planner.dao;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.bean.User;

public interface LoginDAO {
	
	//for user authentication while login
	public int authenticateUser(Login login); 
	
	//to get user profile after login
	public User getUserProfile(String id); 
	

}
