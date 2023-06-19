package com.b.cafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("/auth/join")
	public String join() {
		return "user/join";

	}

	@GetMapping("/auth/log")
	public String login() {
		return "user/log";
	}
	@GetMapping("/userinformation")
	public String update() {
		return "user/userinformation";
	}
}
