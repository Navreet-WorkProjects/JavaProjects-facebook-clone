package com.socialcommunity.service;


import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.springframework.transaction.annotation.Transactional;

import com.socialcommunity.dao.PersonDao;
import com.socialcommunity.domain.Person;

/**
 * Service for processing Persons
 * 
 */

@Transactional
public class PersonServiceImpl implements PersonService{
	
	private PersonDao personDao;
	
	public PersonDao getPersonDao() {
		return personDao;
	}

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}
	
	protected static Logger logger = Logger.getLogger("service");
	public List<Person> getAll() {
		logger.debug("Retrieving all persons");
		
		// Retrieve session from Hibernate
		
		return personDao.getAll();
	}
	
	/**
	 * Retrieves a single person
	 */
	/*public Person get( Integer id ) {
		// Retrieve session from Hibernate
		
		return personDao.get(id);
	}*/
	/**
	 * Adds a new person
	 * @throws NoSuchAlgorithmException 
	 */
	public void addUser(String password,Person person) throws NoSuchAlgorithmException {
		logger.debug("Adding new User");
		
		// Retrieve session from Hibernate
		
		personDao.addUser(password, person);
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
/*	public void delete(Integer id) {
		logger.debug("Deleting existing person");
		
		// Retrieve session from Hibernate

		personDao.delete(id);
	}
	*/
	/**
	 * Edits an existing person
	 */
	/*public void edit(Person person) {
		logger.debug("Editing existing person");
		
		personDao.edit(person);
	}*/
		
	public String checkLogin(String userName, String password) throws HibernateException, NoSuchAlgorithmException{
		
		  return personDao.checkLogin(userName, password);
     }

	@Override
	public List<Person> getUserInformation(String username) {
		// TODO Auto-generated method stub
		return personDao.getUserInformation(username);
	}

	@Override
	public List<Person> getUserNameInformation() {
		// TODO Auto-generated method stub
		return personDao.getUserNameInformation();
	}

}
