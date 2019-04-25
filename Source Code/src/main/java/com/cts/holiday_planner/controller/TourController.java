package com.cts.holiday_planner.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.holiday_planner.bean.Bill;
import com.cts.holiday_planner.bean.Tour;
import com.cts.holiday_planner.bean.User;
import com.cts.holiday_planner.service.TourService;

@Controller
public class TourController {

	@Autowired
	private TourService tourService;

	//addTourPackage
	@RequestMapping(value="newTour", method=RequestMethod.POST)
	public ModelAndView addTour(@ModelAttribute Tour tour,HttpSession httpSession) 
	{
		ModelAndView modelAndView = new ModelAndView();
		try
		{
		
		if(tourService.checkSourceDestination(tour)==1)
		{
		if(tourService.addTour(tour)==1)
		{
			Bill bill = new Bill();
			modelAndView.addObject("tour",tour);
			httpSession.setAttribute("tour",tour);
			
			modelAndView.addObject("finalAmount",tourService.generateBill(tour));
			httpSession.setAttribute("finalAmount",tourService.generateBill(tour));
			
			User user = (User) httpSession.getAttribute("user");
			System.out.println(user.getFirstName());
			
			String paymentStatus = "pending";
			bill.setCustomerName(user.getFirstName()+" "+user.getLastName());
			bill.setTourStartingDate(tour.getStartingDate());
			bill.setTourEndingDate(tour.getEndingDate());
			bill.setSource(tour.getSource());
			bill.setDestination(tour.getDestination());
			bill.setNumberOfTourists(tour.getNumberOfTourists());
			bill.setTotalCost(tourService.generateBill(tour));
			bill.setPaymentStatus(paymentStatus);
			
			tourService.addBill(bill);
			
			httpSession.setAttribute("billDetails", bill);
			
			modelAndView.addObject("billId",bill.getBillId());
			httpSession.setAttribute("billId",bill.getBillId());
			
			modelAndView.addObject("days",tourService.getDays(tour));
			httpSession.setAttribute("days",tourService.getDays(tour));
			
			modelAndView.addObject("cost",tourService.getCost(tour));
			httpSession.setAttribute("cost",tourService.getCost(tour));
			
			modelAndView.setViewName("billGeneration");
			
		}
			
		else
		{
			
			modelAndView.addObject("tourStatus", "Something went wrong");
			modelAndView.setViewName("home");
		}
		}
		
		else
		{
			modelAndView.addObject("tourStatus", "No route found between select source and destination.");
			modelAndView.setViewName("home");
		}
		}
		catch (Exception e) {
			httpSession.setAttribute("errorMessage","Please login first!");
			modelAndView.setViewName("errorPage");
		}
			
	return modelAndView;
	}
	
	@RequestMapping(value="PaymentPage.html", method=RequestMethod.GET)
	public ModelAndView redirectToPaymentPage( HttpSession httpSession)
	{
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("paymentPage");
		return modelAndView;
	}
	
	@RequestMapping(value="home", method=RequestMethod.GET)
	public ModelAndView redirectToHomePage(HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		return modelAndView;
	}

	
	@RequestMapping(value="paymentSuccess", method=RequestMethod.POST)
	public ModelAndView paymentSuccess( HttpSession httpSession)
	{
		ModelAndView modelAndView = new ModelAndView();
		try
		{
		Bill bill = (Bill) httpSession.getAttribute("billDetails");
		String paymentStatus = "paid";
		bill.setPaymentStatus(paymentStatus);
		tourService.updatePaymentStatus(bill);
		modelAndView.setViewName("paymentSuccess");
		return modelAndView;
		}
		catch (Exception e) {
			httpSession.setAttribute("errorMessage","Something went wrong! Please try again.");
			modelAndView.setViewName("errorPage");
		}
		return modelAndView;
	}
	
	@RequestMapping(value="errorPage.html", method=RequestMethod.GET)
	public ModelAndView redirectToErrorPage( HttpSession httpSession)
	{
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("errorPage");
		return modelAndView;
	}
	
}
