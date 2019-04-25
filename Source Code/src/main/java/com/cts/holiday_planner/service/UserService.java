package com.cts.holiday_planner.service;

import com.cts.holiday_planner.bean.User;

public interface UserService {
	
	public int registerUser(User user);
	public boolean validateEmail(User user);
	

}
