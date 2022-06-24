package com.tencoding.blog_2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tencoding.blog_2.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	User findByNameAndPassword(String name, String password);
	
//	@Query(value = "select * from user where name = ?1 and password = ?2;", nativeQuery = true)
//	User login(String name, String password);

}
