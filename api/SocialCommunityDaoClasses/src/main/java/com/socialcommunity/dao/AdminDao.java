package com.socialcommunity.dao;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public class AdminDao {
	
	public int getUserCount() {
		return 20;
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
