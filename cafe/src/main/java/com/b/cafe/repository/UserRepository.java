package com.b.cafe.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.b.cafe.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
