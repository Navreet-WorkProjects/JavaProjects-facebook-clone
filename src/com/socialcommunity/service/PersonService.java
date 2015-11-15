package com.socialcommunity.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.socialcommunity.dao.PersonDao;
import com.socialcommunity.domain.Person;

/**
 * Service for processing Persons
 * 
 */
@Service("personService")
@Transactional
public class PersonService {

	
	@Resource(name="personDao")
	private PersonDao dao;
	
	protected static Logger logger = Logger.getLogger("service");
	public List<Person> getAll() {
		logger.debug("Retrieving all persons");
		
		// Retrieve session from Hibernate
		
		return dao.getAll();
	}
	
	/**
	 * Retrieves a single person
	 */
	public Person get( Integer id ) {
		// Retrieve session from Hibernate
		
		return dao.get(id);
	}
	/**
	 * Adds a new person
	 * @throws NoSuchAlgorithmException 
	 */
	public void addUser(String password,Person person) throws NoSuchAlgorithmException {
		logger.debug("Adding new User");
		
		// Retrieve session from Hibernate
		
		dao.addUser(password, person);
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	public void delete(Integer id) {
		logger.debug("Deleting existing person");
		
		// Retrieve session from Hibernate

		dao.delete(id);
	}
	
	/**
	 * Edits an existing person
	 */
	public void edit(Person person) {
		logger.debug("Editing existing person");
		
		dao.edit(person);
	}
	
	

	
	  public String checkLogin(String userName, String password) throws HibernateException, NoSuchAlgorithmException{
		
		  return dao.checkLogin(userName, password);
     }
	
	
}
