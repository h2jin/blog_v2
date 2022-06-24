package com.tencoding.blog_2.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tencoding.blog_2.model.Board;
import com.tencoding.blog_2.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping({"/", ""})
	public String contentList(@PageableDefault(size = 3, sort = "id", direction = Direction.DESC) Pageable pageable, Model model) {
		Page<Board> boards = boardService.showList(pageable);
		model.addAttribute("boards", boards);
		return "home";
	}
	
	
	@ResponseBody
	@PostMapping("/board/save")
	public String save(@RequestBody Board board) {
		boardService.saveContent(board);
		return "ok";
	}
	
	@GetMapping("/board/{id}")
	public String showDetail(@PathVariable int id, Model model) {
		Board board = boardService.showDetail(id);
		model.addAttribute("board", board);
		return "board/detail";
	}
	
	@DeleteMapping("/board/{id}")
	@ResponseBody
	public String deleteBoard(@PathVariable int id) {
		int result = boardService.deleteBoard(id);
		return result == 1 ? "ok" : "fail";
		
	}
	
}
