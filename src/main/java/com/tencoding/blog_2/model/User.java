package com.tencoding.blog_2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, length = 20, unique = true)
	private String name;
	
	@Column(nullable = false, length = 30)
	private String password;
	
	@Column(nullable = false, length = 30)
	private String Email;
	
	@Column(nullable = false, length = 20)
	private String phoneNumber;
}
