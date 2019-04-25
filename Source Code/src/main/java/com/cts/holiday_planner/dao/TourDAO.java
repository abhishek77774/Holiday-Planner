package com.cts.holiday_planner.dao;

import com.cts.holiday_planner.bean.Bill;
import com.cts.holiday_planner.bean.Tour;

public interface TourDAO {
	
	//to add tour in the database as per user search
	public int addTour(Tour tour);     
	
	//to check source and destination with the database
	public int checkSourceDestination(Tour tour);    
	
	//to get number of days to calculate tour cost
	public long getDays(Tour tour);   
	
	//to get tour cost as per getDays()
	public int getCost(Tour tour);
	
	//to generate bill
	public long generateBill(Tour tour);    
	
	//to add bill in the database
	public int addBill(Bill bill); 
	
	//to update payment status in the database
	public int updatePaymentStatus(Bill bill);    

}
