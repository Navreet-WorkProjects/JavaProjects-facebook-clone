package com.socialcommunity.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

import com.socialcommunity.dao.PostDao;
import com.socialcommunity.domain.Post;

@Transactional
public class PostService {

	private PostDao postDao;
		
	public void addPost(Post post) {
		
		
		postDao.addPost(post);
	}

	public PostDao getPostDao() {
		return postDao;
	}
	
	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}
	
	public List<Post> getPostInformation(String username) {
		// TODO Auto-generated method stub
		
		return postDao.getPostInformation(username);
	}

}
