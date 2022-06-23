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
	@ResponseBody
	public String save(@RequestBody User user) {
		int result = userService.save(user);
		return "ok";
	}
	
	@PostMapping("/api/user/login")
	public String ligin(@RequestBody User user, HttpSession session) {
		
		return "";
	}
	
}
