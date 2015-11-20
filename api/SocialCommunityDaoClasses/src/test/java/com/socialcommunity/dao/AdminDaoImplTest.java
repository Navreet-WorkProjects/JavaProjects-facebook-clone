package com.socialcommunity.dao;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

import junit.framework.TestCase;

public class AdminDaoImplTest extends TestCase {
	
	private AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
	
	/**
	 * Testing getUserCount()
	 */
	public void testGetUserCount() {
		Long result = 1L;
		assertEquals(result, adminDaoImpl.getUserCount());
	}
	
	/**
	 * Testing updatePerson()
	 */
	public void testUpdatePerson() {
		Status status = Status.ACTIVE;
		String username = "admin1";
		assertEquals("success", adminDaoImpl.updatePerson(status, username));
	}
	
	/**
	 * Testing getSearchResult()
	 */
	public void testGetSearchResult() {
		String username = "admin1";
		Person search = adminDaoImpl.getSearchResult(username);
		assertEquals("Navreet", search.getFirstName());
		assertEquals("Kaur", search.getLastName());
		assertEquals("arpitparikh@gmail.com", search.getEmail());
	}

}
