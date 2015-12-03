package com.socialcommunity.dao;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import com.socialcommunity.domain.Post;

public class PostDao {
	
	protected static Logger logger = Logger.getLogger("DataAccessLayer");

	/**
	 * Retrieves all posts
	 * 
	 * @return a list of posts
	 */
	public List<Post> getAll() {
		logger.debug("Retrieving all posts");
		
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		// Create a Hibernate query (HQL)
		Query query = session.createQuery("FROM  Post");
		
		// Retrieve all
		
		session.getTransaction().commit();
		session.close();
	
		
		return  query.list();
	}
	
	/**
	 * Retrieves a single post
	 */
	public Post get( Integer post_id ) {
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		// Retrieve existing person first
		Post post = (Post) session.get(Post.class, post_id);
		
		session.getTransaction().commit();
		session.close();
		
		return post;
	}
	/**
	 * Adds a new post
	 * @throws NoSuchAlgorithmException 
	 */
	public String addPost(Post post) {
		logger.debug("Adding new post");
		
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		
		// Save
		session.save(post);
		session.getTransaction().commit();
		return "success";
	
	}
	
	/**
	 * Deletes an existing person
	 * @param id the id of the existing person
	 */
	public void delete(Integer post_id) {
		logger.debug("Deleting existing comment");
		
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		// Retrieve existing person first
		Post post = (Post) session.get(Post.class, post_id);
		
		// Delete 
		session.delete(post);
		session.getTransaction().commit();
	
	
	}
	
	/**
	 * Edits an existing person
	 */
	public void edit(Post post) {
		logger.debug("Editing existing post");
		
		// Retrieve session from Hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		// Retrieve existing person via id
		Post existingPost = (Post) session.get(Post.class, post.getPost_id());
		
		// Assign updated values to this person
		

		// Save updates
		session.save(existingPost);
		session.getTransaction().commit();
		
	}
	
	

	public List<Post> getPostInformation(String username) {
		// TODO Auto-generated method stub
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String hql = "FROM Post as E WHERE E.username = ?";
		
		Query query=session.createQuery(hql);
		query.setParameter(0, username);
		List<Post> list=query.list();
		
		session.getTransaction().commit();
	
	
		
		return list;
	}


}
