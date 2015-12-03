package com.socialcommunity.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;

public class PersonDaoImpl implements PersonDao{
	
	
	protected static Logger logger = Logger.getLogger("DataAccessLayer");
	
	
	/**
	 * Retrieves all persons
	 * 
	 * @return a list of persons
	 */

	public List<Person> getAll() {
		logger.debug("Retrieving all persons");

		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  Person");
		
		List<Person> list=query.list();
		
		session.getTransaction().commit();
		// Retrieve all persons
		return  list;
	}
	
	/**
	 * Retrieves a single person
	 */
	/*
	public Person get( Integer id ) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Person person = (Person) session.get(Person.class, id);
		
		return person;
	}
	*//**
	 * Adds a new person
	 * @throws NoSuchAlgorithmException 
	 */
	public void addUser(String password,Person person) throws NoSuchAlgorithmException {
		logger.debug("Adding new User");
		
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		person.setPassword(createHash(password));
		
	
		person.setStatus(Status.ACTIVE.toString());
	
		
		// Save
		session.save(person);
		session.getTransaction().commit();
		
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	/*
	public void delete(Integer id) {
		logger.debug("Deleting existing person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Person person = (Person) session.get(Person.class, id);
		
		// Delete 
		session.delete(person);
	}
	*/
	/**
	 * Edits an existing person
	 */
	
	/*public void edit(Person person) {
		logger.debug("Editing existing person");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person via id
		Person existingPerson = (Person) session.get(Person.class, person.getId());
		
		// Assign updated values to this person
		existingPerson.setFirstName(person.getFirstName());
		existingPerson.setLastName(person.getLastName());
	

		// Save updates
		session.save(existingPerson);
	}
*/	
	
	//Hash Function to converting into HashFunction
	public String createHash(String data) throws NoSuchAlgorithmException{
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.update(data.getBytes());
        byte byteData[] = digest.digest();
        //convert bytes to hex chars
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
		}
	
	
	  public String checkLogin(String userName, String password) throws HibernateException, NoSuchAlgorithmException{
			System.out.println("In Check login");
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			
			String userFound;
			
			//Query using Hibernate Query Language
			String SQL_QUERY =" FROM Person as o where o.username=? AND o.password=? AND o.status=? ";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter(0,userName);
			
			System.out.println(createHash(password));
			
			
			query.setParameter(1,createHash(password));
			query.setParameter(2, "ACTIVE");
		
			List<Person> list = query.list();
			
			
			
			System.out.println(list);
			if ((list != null) && (list.size() > 0)) {
				userFound= "success";
			}
			else
			{
				userFound="error";
			}
			session.getTransaction().commit();
		
			return userFound;              
     }

	public List<Person> getUserInformation(String username) {
		// TODO Auto-generated method stub
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		String hql = "FROM Person as E WHERE E.username = ?";
		Query query=session.createQuery(hql);
		query.setParameter(0, username);
		List<Person> list=query.list();
		session.getTransaction().commit();
		return list;
	}
	

	public List<Person> getUserNameInformation() {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String hql = "FROM Person ";
		
		Query query=session.createQuery(hql);
		
		List<Person> list=query.list();
		session.getTransaction().commit();
		
		return list;
	}
}
