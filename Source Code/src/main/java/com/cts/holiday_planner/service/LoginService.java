package com.cts.holiday_planner.service;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.bean.User;

public interface LoginService {
	
	public int authenticateUser(Login login);
	public User getUserProfile(String id);


}
