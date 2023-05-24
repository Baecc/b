package com.b.cafe.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CafeControllerTest {

	@GetMapping("/test/hello")
	public String hello() {
		return "<h1>hi</h1>";
	}
}
