package com.socialcommunity.service;

import org.apache.log4j.Logger;
import org.springframework.transaction.annotation.Transactional;

import com.socialcommunity.constants.Status;
import com.socialcommunity.dao.AdminDao;
import com.socialcommunity.domain.Person;


@Transactional
public class AdminServiceImpl implements AdminService{
	/* setting logger for class */
	protected static Logger logger = Logger.getLogger("AdminService");
	
	/* Dao instance */ 
	AdminDao adminDao;		
	
	/**
	 * Get adminDao instance
	 * @param adminDao
	 */
	public AdminDao getAdminDao() {
		return adminDao;
	}
	
	/**
	 * Set adminDao instance
	 * @param adminDao
	 */
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	/**
	 * To get number of users
	 */
	public Long getUserCount() throws Exception{
		logger.debug("Retrieving number of users");
		// calling dao methog to get the count
		Long result = adminDao.getUserCount();
		logger.debug("Retrieved number of users");
		return result;
	}
	
	/**
	 * To update status of user by admin
	 * @param status - user can be active or blocked
	 * @param username - username of the user
	 */
	public String updatePerson(Status status, String username) throws Exception{
		logger.debug("Update user status");
		// calling dao methog to update status
		adminDao.updatePerson(status, username);
		logger.debug("User status updated");
		return "success";
	}
	
	/**
	 * To search a particular user by it's username
	 * @param searchString username of user
	 * @return
	 */
	public Person getSearchResult(String searchString) throws Exception{	
		logger.debug("Search a particular user by it's username ");
		// calling dao method to search person detail based on the username
		Person search = adminDao.getSearchResult(searchString);
		logger.debug("User details retrieved");
		return search;
	}

}
