package com.cts.holiday_planner.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.cts.holiday_planner.bean.Login;
import com.cts.holiday_planner.bean.User;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.query.Query;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public int registerUser(User user) {
		try
		{
			
		Login login = new Login();
		
		login.setEmailId(user.getEmailId());
		login.setPassword(user.getPassword());
		
		sessionFactory.getCurrentSession().save(user);
		sessionFactory.getCurrentSession().save(login);
		return 1;
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return -1;
		}
	}

	public boolean validateEmail(User user) {
		try
		{
		String userName = user.getEmailId();
		Session session = sessionFactory.getCurrentSession();
		String query = "from User where emailId = ?";
		Query<User> query2 = null;
		query2=session.createQuery(query);
		query2.setParameter(0,userName); 
		User user1= query2.getSingleResult();
		if(user1!=null)
		{
		return true;
		}
		else
		{
			return false;
			}
		}
		catch(Exception e)
		{
			//e.printStackTrace();
			return false;
		}
	}

}
