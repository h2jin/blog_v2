package com.tencoding.blog_2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tencoding.blog_2.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
