package com.socialcommunity.service;





import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;



import org.springframework.ui.Model;

import com.socialcommunity.constants.Status;
import com.socialcommunity.dao.AdminDao;
import com.socialcommunity.domain.Person;


//@Transactional
public class AdminService {
	
	protected static Logger logger = Logger.getLogger("adminService");
	 
	AdminDao adminDao;
	
	public int getUserCount() {
		int result = adminDao.getUserCount();
		return result;
	}
	
	public void updatePerson(Status status, String username) {
		adminDao.updatePerson(status, username);
	}
	
	public Person getSearchResult(String searchString) {			
		Person search = adminDao.getSearchResult(searchString);
		return search;
	}

}
