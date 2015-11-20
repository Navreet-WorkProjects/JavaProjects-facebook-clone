package com.socialcommunity.service;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public interface AdminService {
	
	public Long getUserCount() throws Exception; 
	
	public String updatePerson(Status status, String username) throws Exception;
	
	public Person getSearchResult(String searchString) throws Exception;

}
