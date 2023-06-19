package com.b.cafe.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;


import com.b.cafe.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
 Optional<User> findByUsername(String username);
	
}
