package com.socialcommunity.dao;

import org.springframework.dao.PessimisticLockingFailureException;
import org.springframework.util.Assert;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

import junit.framework.TestCase;

public class PersonDaoImplTest extends TestCase {
	
	PersonDaoImpl daoImpl=new PersonDaoImpl();
	
	
	public void testaddUser() throws Exception {		
		String password = "9879055860";
		String username = "arpithparikh1";
		  Person person = new Person();
	        
		  person.setEmail("arpithparikh@gmail.com");
	        person.setUsername("arpithparikh2");        
	        //session.save(stock);
	       
	       
	  
	        System.out.println("hi");

	      
	        daoImpl.addUser(password, person);
	        
	        String success="success";
	      
		assertNotNull(success);
	}
	
	

	public void testGetUserInformation() throws Exception {
			String username = "arpithparikh2";
			
	
			assertNotNull(daoImpl.getUserInformation(username));;
		}
	
}
