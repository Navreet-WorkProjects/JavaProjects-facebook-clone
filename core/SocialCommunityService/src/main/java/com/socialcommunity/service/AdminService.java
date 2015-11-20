package com.socialcommunity.service;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public interface AdminService {
	
	public Long getUserCount(); 
	
	public String updatePerson(Status status, String username);
	
	public Person getSearchResult(String searchString);

}
