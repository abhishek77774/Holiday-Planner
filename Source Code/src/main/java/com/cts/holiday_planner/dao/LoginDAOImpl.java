package com.cts.holiday_planner.dao;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.bean.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public int authenticateUser(Login login) {
		try{
			
			String userName = login.getEmailId();
			String password = login.getPassword();
			Session session = sessionFactory.getCurrentSession();
			String query = "from Login where emailId = ? and password = ? ";
			Query<Login> query2 = null;
			query2=session.createQuery(query);
			query2.setParameter(0,userName);  
			query2.setParameter(1,password);  
			Login user= query2.getSingleResult();
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
				return 0;
			}
	}

	public User getUserProfile(String emailId) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from User where emailId = ?";
			Query<User> query2 = null;
			query2=session.createQuery(query);
			query2.setParameter(0,emailId);  
			User user= query2.getSingleResult();
			if(user!=null)
			{
			return user;
			}
			else
			{
				return null;
				}
			}
			catch(Exception e)
			{
				//e.printStackTrace();
				return null;
			}
	}

}
