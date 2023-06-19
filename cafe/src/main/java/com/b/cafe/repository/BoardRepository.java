package com.b.cafe.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.b.cafe.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {
	
}
