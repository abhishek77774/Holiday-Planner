package com.cts.holiday_planner.dao;

import java.util.concurrent.TimeUnit;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.holiday_planner.bean.Bill;
import com.cts.holiday_planner.bean.SourceDestination;
import com.cts.holiday_planner.bean.Tour;


@Repository
@Transactional
public class TourDAOImpl implements TourDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public int addTour(Tour tour) {
		try
		{
		sessionFactory.getCurrentSession().save(tour);
		return 1;
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return -1;
		}
	}
	
	public int checkSourceDestination(Tour tour)
	{
		try
		{
	
		String source = tour.getSource();
		String destination = tour.getDestination();
		Session session = sessionFactory.getCurrentSession();
		String query = "from SourceDestination where source = ? and destination = ? ";
		Query<SourceDestination> query2 = null;
		query2=session.createQuery(query);
		query2.setParameter(0,source);  
		query2.setParameter(1,destination);  
		
		SourceDestination user= query2.getSingleResult();
	//System.out.println(user);
		if(user!=null)
		{
		return 1;
		}
		else
		{
			return 0;
		}
		
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return -1;
		}

}
	
	public long generateBill(Tour tour)
	{
		long days = 1;
		int numberOfTourists=1;
		int cost = 1;
		long finalAmount=1;

		days = getDays(tour);
		cost = getCost(tour);
		numberOfTourists = tour.getNumberOfTourists();
		finalAmount = cost * days * numberOfTourists;
		
		return finalAmount;
	}
	
	public int addBill(Bill bill)
	{
		try
		{
		sessionFactory.getCurrentSession().save(bill);
		return 1;
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return -1;
		}
	}

	@Override
	public long getDays(Tour tour) {
		long days = 1;
	
		
		long diff=tour.getEndingDate().getTime() - tour.getStartingDate().getTime();
		days =   TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
		if(days<=0)
		{
			days=1;
		}
		return days;
	}

	@Override
	public int getCost(Tour tour) {
		
		int cost = 1;
		String source = tour.getSource();
		String destination = tour.getDestination();
		Session session = sessionFactory.getCurrentSession();
		String query = "from SourceDestination where source = ? and destination = ? ";
		Query<SourceDestination> query2 = null;
		query2=session.createQuery(query);
		query2.setParameter(0,source);  
		query2.setParameter(1,destination);  
		
		SourceDestination sourceDestination= query2.getSingleResult();
		
		cost = sourceDestination.getCost();
		return cost;
	}

	@Override
	public int updatePaymentStatus(Bill bill) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(bill);
		return 1;
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return -1;
		}
	}
}
