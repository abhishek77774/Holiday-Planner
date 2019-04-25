package com.cts.holiday_planner.service;

import com.cts.holiday_planner.bean.Bill;
import com.cts.holiday_planner.bean.Tour;

public interface TourService {

	public int addTour(Tour tour);
	public int checkSourceDestination(Tour tour);
	public long generateBill(Tour tour);
	public int addBill(Bill bill);
	public long getDays(Tour tour);
	public int getCost(Tour tour);
	public int updatePaymentStatus(Bill bill);
}
