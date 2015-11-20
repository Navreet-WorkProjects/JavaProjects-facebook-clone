package com.socialcommunity.service;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

import junit.framework.TestCase;

public class AdminServiceImplTest extends TestCase {

		private AdminServiceImpl adminServiceImpl = new AdminServiceImpl();
		
		/**
		 * Testing getUserCount()
		 * @throws Exception 
		 */
		public void testGetUserCount() throws Exception {
			Long result = 1L;
			assertEquals(result, adminServiceImpl.getUserCount());
		}
		
		/**
		 * Testing updatePerson()
		 * @throws Exception 
		 */
		public void testUpdatePerson() throws Exception {
			Status status = Status.ACTIVE;
			String username = "admin1";
			assertEquals("success", adminServiceImpl.updatePerson(status, username));
		}
		
		/**
		 * Testing getSearchResult()
		 * @throws Exception 
		 */
		public void testGetSearchResult() throws Exception {
			String username = "admin1";
			Person search = adminServiceImpl.getSearchResult(username);
			assertEquals("Navreet", search.getFirstName());
			assertEquals("Kaur", search.getLastName());
			assertEquals("arpitparikh@gmail.com", search.getEmail());
		}

}
