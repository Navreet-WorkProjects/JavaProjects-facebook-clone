package com.socialcommunity.dao;
import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public interface AdminDao {
	public Long getUserCount();
	public String updatePerson(Status status, String username);
	public Person getSearchResult(String searchString);

}
