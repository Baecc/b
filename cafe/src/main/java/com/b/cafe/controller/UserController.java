package com.b.cafe.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.b.cafe.config.auth.PrincipalDetail;

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
	public String update(@AuthenticationPrincipal PrincipalDetail principal) {
		return "user/userinformation";
	}
}
