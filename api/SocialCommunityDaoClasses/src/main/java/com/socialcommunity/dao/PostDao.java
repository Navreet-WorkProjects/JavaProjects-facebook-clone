package com.socialcommunity.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.socialcommunity.domain.Comment;
import com.socialcommunity.domain.Person;
import com.socialcommunity.domain.Post;



public class PostDao {
	
	protected static Logger logger = Logger.getLogger("DataAccessLayer");
	
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * Retrieves all posts
	 * 
	 * @return a list of posts
	 */
	public List<Post> getAll() {
		logger.debug("Retrieving all posts");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  Post");
		
		// Retrieve all
		return  query.list();
	}
	
	/**
	 * Retrieves a single post
	 */
	public Post get( Integer post_id ) {
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Post post = (Post) session.get(Post.class, post_id);
		
		return post;
	}
	/**
	 * Adds a new post
	 * @throws NoSuchAlgorithmException 
	 */
	public void addPost(Post post) {
		logger.debug("Adding new post");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		
		// Save
		session.save(post);
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	public void delete(Integer post_id) {
		logger.debug("Deleting existing comment");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person first
		Post post = (Post) session.get(Post.class, post_id);
		
		// Delete 
		session.delete(post);
	}
	
	/**
	 * Edits an existing person
	 */
	public void edit(Post post) {
		logger.debug("Editing existing post");
		
		// Retrieve session from Hibernate
		Session session = sessionFactory.getCurrentSession();
		
		// Retrieve existing person via id
		Post existingPost = (Post) session.get(Post.class, post.getPost_id());
		
		// Assign updated values to this person
		

		// Save updates
		session.save(existingPost);
	}
	
	

	public List<Post> getPostInformation(String username) {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Post as E WHERE E.username = ?";
		
		Query query=session.createQuery(hql);
		query.setParameter(0, username);
		List<Post> list=query.list();
		
		
		
		return list;
	}


}
