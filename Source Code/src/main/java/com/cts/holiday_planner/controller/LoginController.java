package com.cts.holiday_planner.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.service.LoginService;
import com.cts.holiday_planner.service.TourService;
import com.cts.holiday_planner.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private TourService tourService;

	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView validateUser(@ModelAttribute Login login,HttpSession httpSession) 
	{
		ModelAndView modelAndView = new ModelAndView();
		if(loginService.authenticateUser(login)==1)
     	{
			
			modelAndView.addObject("user", loginService.getUserProfile(login.getEmailId()));
			httpSession.setAttribute("user", loginService.getUserProfile(login.getEmailId()));
			modelAndView.setViewName("home");
     	}
		else if(loginService.authenticateUser(login)==-1)
		{
			modelAndView.addObject("errorMessage", "Something went wrong! Please try after sometime.");
			modelAndView.setViewName("errorPage");
			
		}	
		
		else
		{
			modelAndView.addObject("invalidPassword", "Invalid Login Credentials");
			//httpSession.setAttribute("user", loginService.getUserProfile(login.getEmailId()));
			modelAndView.setViewName("login");
		}
	return modelAndView;
	}
	
	//LogoutController
	@RequestMapping(value="logout.html", method=RequestMethod.GET)
	public ModelAndView logoutNow(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		
		httpSession.removeAttribute("user");
		modelAndView.addObject("logoutMessage", "Logout Successful");
		httpSession.invalidate();
		modelAndView.setViewName("login");
		return modelAndView;
	}
	
	
	@RequestMapping(value="registration", method=RequestMethod.GET)
	public ModelAndView getRegistrationPage(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("registration");
		return modelAndView;
	}
	
	@RequestMapping(value="redirectToHome", method=RequestMethod.GET)
	public ModelAndView redirectToHomePage(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		return modelAndView;
	}
	

	@RequestMapping(value="about.html", method=RequestMethod.GET)
	public ModelAndView redirectToAboutPage(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("about");
		return modelAndView;
	}
	
	
}
