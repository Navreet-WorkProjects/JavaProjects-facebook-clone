package com.socialcommunity.dao;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

import junit.framework.TestCase;

public class AdminDaoImplTest extends TestCase {
	
	private AdminDaoImpl adminDaoImpl = new AdminDaoImpl();
	
	/**
	 * Testing getUserCount()
	 * @throws Exception .
	 */
	public void testGetUserCount() throws Exception {
		Long result = 1L;
		System.out.println(adminDaoImpl.getUserCount());
		assertEquals(result, adminDaoImpl.getUserCount());
	}
	
	/**
	 * Testing updatePerson()
	 * @throws Exception 
	 */
	public void testUpdatePerson() throws Exception {
		Status status = Status.ACTIVE;
		String username = "arpithparikh";
		assertEquals("success", adminDaoImpl.updatePerson(status, username));
	}
	
	/**
	 * Testing getSearchResult()
	 * @throws Exception 
	 */
	public void testGetSearchResult() throws Exception {
		String username = "admin1";
		Person search = adminDaoImpl.getSearchResult(username);
		assertEquals("Navreet", search.getFirstName());
		assertEquals("Kaur", search.getLastName());
		assertEquals("arpithparikh@gmail.com", search.getEmail());
	}

}
