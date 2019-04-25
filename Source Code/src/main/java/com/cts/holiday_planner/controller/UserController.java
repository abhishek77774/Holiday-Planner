package com.cts.holiday_planner.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.cts.holiday_planner.bean.User;
import com.cts.holiday_planner.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value="registration", method=RequestMethod.POST)
	public ModelAndView validateUser(@ModelAttribute User user,HttpSession httpSession) 
	{
		ModelAndView modelAndView = new ModelAndView();
		if(userService.validateEmail(user))
		{
			//System.out.println("Invalid Email");
			modelAndView.addObject("registrationStatus", "Email is already registered with us!!!");
			modelAndView.setViewName("login");
		}
			
		else
		{
			//System.out.println("valid email");
			userService.registerUser(user);
			modelAndView.addObject("registrationStatus", "Your details are submitted successfully.");
			modelAndView.setViewName("login");
		}
			
	return modelAndView;
	}
	
	
	//LogoutController
	@RequestMapping(value="loginNow", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
	

	
	
	
}
