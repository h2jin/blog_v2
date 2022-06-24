package com.tencoding.blog_2.api;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.blog_2.model.User;
import com.tencoding.blog_2.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/api/user")
	public String save(@RequestBody User user) {
		int result = userService.save(user);
		System.out.println(" 회원가입  save 호출 :  " + result );
		return "ok";
	}
	
	@PostMapping("/api/user/login")
	@ResponseBody
	public String ligin(@RequestBody User user, HttpSession session) {
		User principal = userService.login(user);
		if(principal != null) {
			System.out.println("세션에 유저정보 저장됨");
			session.setAttribute("principal", principal);
		}
		System.out.println(principal);
		return "ok";
	}
	
}
