package com.socialcommunity.dao;

import org.apache.log4j.Logger;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public class AdminDao {
	
	protected static Logger logger = Logger.getLogger("DataAccessLayerAdmin");
	
	public int getUserCount() {
		int result = 20;
		return result;
	}
	public void updatePerson(Status status, String username) {
		System.out.println(status + username);
	}
	public Person getSearchResult(String searchString) {
		Person search = new Person();
		search.setDOB("10/04/1985");
		search.setUsername("alle");
		search.setStatus(Status.ACTIVE);
		return search;
	}

}
