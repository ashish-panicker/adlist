package com.adlist.model.service;

import com.adlist.model.Post;
import com.adlist.model.dao.PostDao;

public class PostServiceImpl implements PostService {

	private PostDao postDao;

	public PostServiceImpl() {
	}

	public PostServiceImpl(PostDao postDao) {
		this.postDao = postDao;
	}

	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}

	@Override
	public void create(Post post) {
		this.postDao.create(post);
	}

}
