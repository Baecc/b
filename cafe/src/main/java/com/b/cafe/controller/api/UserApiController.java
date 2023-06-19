package com.b.cafe.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.b.cafe.dto.ResponseDto;
import com.b.cafe.model.RoleType;
import com.b.cafe.model.User;
import com.b.cafe.service.UserService;

@RestController
public class UserApiController {

	
	@Autowired
	private UserService userService;

	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer>save(@RequestBody User user){
		System.out.println("userApiController :save호출");
		 userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	@PutMapping("/user")
	public ResponseDto<Integer> userinformation(@RequestBody User user){
		userService.회원수정(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}
