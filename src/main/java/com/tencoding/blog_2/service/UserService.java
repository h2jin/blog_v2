package com.tencoding.blog_2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.blog_2.model.User;
import com.tencoding.blog_2.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	public int save(User user) {
		try {
			userRepository.save(user);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	@Transactional
	public User login(User user) {
		return userRepository.findByNameAndPassword(user.getName(), user.getPassword());
	}
	
}
