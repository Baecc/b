package com.b.cafe.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.b.cafe.model.RoleType;
import com.b.cafe.model.User;
import com.b.cafe.repository.UserRepository;

@RestController
public class DummyControllerTest {

	@Autowired
	UserRepository userRepository;
	
	@PostMapping("/dummy/join")
	public String join(User user) {
		System.out.println("nickname : " + user.getUsername());
		System.out.println("password : " + user.getPassword());
		System.out.println("email : " + user.getEmail());
	
		user.setRole(RoleType.USER);
		userRepository.save(user);
		return"회원가입 완료";
	}
}
