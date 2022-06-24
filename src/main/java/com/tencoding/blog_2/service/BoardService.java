package com.tencoding.blog_2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.blog_2.model.Board;
import com.tencoding.blog_2.repository.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Transactional
	public void saveContent(Board board) {
		boardRepository.save(board);
	}
	
	@Transactional
	public Page<Board> showList(Pageable pageable) {
		Page<Board> boards = boardRepository.findAll(pageable);
		return boards;
	}
	
	@Transactional
	public Board showDetail(int id) {
		Board board = boardRepository.findById(id).orElseThrow(() -> {
			return new RuntimeException("잘못된 접근입니다.");
		});
		board.setReadcount(board.getReadcount()+1);
		return board;
	}
	
	@Transactional
	public int deleteBoard(int id) {
		int result = boardRepository.mDeleteById(id);
		return result;
	}

}
