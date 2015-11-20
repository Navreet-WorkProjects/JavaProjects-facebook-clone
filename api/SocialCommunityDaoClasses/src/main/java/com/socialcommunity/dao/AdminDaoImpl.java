package com.socialcommunity.dao;


import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public class AdminDaoImpl implements AdminDao{
	/* setting logger for class */
	protected static Logger logger = Logger.getLogger("AdminDao");
	/* Sessionfactory instance for DB connection */
	private SessionFactory sessionFactory;
	
	/**
	 * To get number of users
	 */
	public Long getUserCount() {
		logger.debug("Retrieving detail of a person");
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();				
		// Hibernate query to count number of users
		Long result = (Long) session.createQuery("select count(*) from Person").uniqueResult();
		//int result = 20;
		logger.debug("Retrieved number of users");
		return result;
	}
	
	/**
	 * To update status of user by admin
	 * @param status - user can be active or blocked
	 * @param username - username of the user
	 */
	public String updatePerson(Status status, String username) {
		logger.debug("Update user status");
		Session session = sessionFactory.getCurrentSession();	
		Query query= session.createQuery("update Person set STATUS=:STATUS where USERNAME=:USERNAME");
		query.setString("STATUS", status.toString());
		query.setString("USERNAME", username);
		query.executeUpdate();
		logger.debug("User status updated");
		return "success";
	}
	
	/**
	 * To search a particular user by it's username
	 * @param searchString username of user
	 * @return
	 */
	public Person getSearchResult(String searchString) {
	    logger.debug("Search user details");
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM  Person where USERNAME=:USERNAME");
		query.setString("USERNAME", searchString);
		query.setMaxResults(1);
		Person search = (Person) query.uniqueResult();
		/*Person search = new Person();
		search.setDOB("10/04/1985");
		search.setUsername("alle");
		search.setStatus(Status.ACTIVE);*/
		logger.debug("User details retrieved");
		return search;	
    }
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
