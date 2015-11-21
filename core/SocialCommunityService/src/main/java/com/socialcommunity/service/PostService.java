package com.socialcommunity.service;

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

}
