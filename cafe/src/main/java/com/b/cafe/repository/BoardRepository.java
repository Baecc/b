package com.b.cafe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.b.cafe.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {
	@Modifying
	@Query("update Board b set b.count = b.count + 1 where b.id = :id")
	void updateCount(int id);
}
