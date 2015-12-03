package com.socialcommunity.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.socialcommunity.domain.Post;

import junit.framework.TestCase;

public class PostDaoTest extends TestCase {

	// getpostinfo
	//get
	//addpost
	
	PostDao postDao=new PostDao();
	
	public void testGet() throws Exception {
		Post post = new Post();
		assertEquals("1", postDao.get(16).getUsername());
		assertEquals("10-11-2015", postDao.get(16).getPost_date());
		assertEquals("Test", postDao.get(16).getPost());		
	}
	
	public void testAddPost() throws Exception {
		Post post = new Post();
		post.setPost("Test");
		post.setPost_date("10-11-2015");
		post.setUsername("1");
		assertEquals("success", postDao.addPost(post));
		
	}
	
	public void testGetPostInformation() throws Exception {
		//List<Post> posts = new ArrayList<Post>();
		//posts.add(new Post(1, "Test Post", "10-10-2015", "1"));
		//assertEquals("1", postDao.get(1).getUsername());
				
	}
	
	
	
}

