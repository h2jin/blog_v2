package com.tencoding.blog_2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Usercontroller {
	
//	@GetMapping({"/", ""})
//	public String home() {
//		return "home";
//	}
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/board/saveForm")
	public String saveForm() {
		return "board/saveForm";
	}
	
	@GetMapping("/board/updateForm")
	public String updateForm() {
		return "board/updateForm";
	}

}
