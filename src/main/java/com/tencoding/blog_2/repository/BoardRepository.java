package com.tencoding.blog_2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tencoding.blog_2.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer>{

	@Query(value = "DELETE FROM board WHERE id = :id", nativeQuery = true)
	int mDeleteById(int id);
}
