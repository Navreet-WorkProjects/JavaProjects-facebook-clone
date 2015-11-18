package com.socialcommunity.service;

import org.apache.log4j.Logger;
import com.socialcommunity.constants.Status;
import com.socialcommunity.dao.AdminDao;
import com.socialcommunity.domain.Person;


//@Transactional
public class AdminService {
	
	protected static Logger logger = Logger.getLogger("adminService");
	 
	AdminDao adminDao;		
	
	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public int getUserCount() {
		int result = adminDao.getUserCount();
		System.out.println(result);
		return result;
	}
	
	public void updatePerson(Status status, String username) {
		adminDao.updatePerson(status, username);
	}
	
	public Person getSearchResult(String searchString) {			
		Person search = adminDao.getSearchResult(searchString);
		System.out.println(search.getUsername());
		return search;
	}

}
