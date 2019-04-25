package com.cts.holiday_planner.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.holiday_planner.bean.Bill;
import com.cts.holiday_planner.bean.Tour;
import com.cts.holiday_planner.dao.TourDAO;

@Service
@Transactional(propagation=Propagation.SUPPORTS)
public class TourServiceImpl implements TourService {
	
	@Autowired
	TourDAO tourDAO;

	public int addTour(Tour tour) {
		// TODO Auto-generated method stub
		return tourDAO.addTour(tour);
	}
	
	public int checkSourceDestination(Tour tour)
	{
		return tourDAO.checkSourceDestination(tour);
	}
	
	public long generateBill(Tour tour)
	{
		return tourDAO.generateBill(tour);
	}

	public int addBill(Bill bill) {
		// TODO Auto-generated method stub
		return tourDAO.addBill(bill);
	}

	@Override
	public long getDays(Tour tour) {
		// TODO Auto-generated method stub
		return tourDAO.getDays(tour);
	}

	@Override
	public int getCost(Tour tour) {
		// TODO Auto-generated method stub
		return tourDAO.getCost(tour);
	}

	@Override
	public int updatePaymentStatus(Bill bill) {
		// TODO Auto-generated method stub
		return tourDAO.updatePaymentStatus(bill);
	}
	


}
