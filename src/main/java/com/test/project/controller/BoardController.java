package com.test.project.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.project.mapper.BoardMapper;
import com.test.project.model.BoardDTO;
import com.test.project.model.CustomUser;
import com.test.project.model.UserDTO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardMapper mapper;

	@GetMapping("/board/list")
	public String list(Model model) {
		
		List<BoardDTO> list = mapper.list();
		
		model.addAttribute("list", list);
		
		return "board.list";
	}
	
	@GetMapping("/board/view")
	public String view(Model model, String seq) {
		
		BoardDTO dto = mapper.get(seq);
		
		model.addAttribute("dto", dto);
		
		return "board.view";
	}
	
	@GetMapping("/board/add")
	public String add(Model model) {
		return "board.add";
	}
	@PostMapping("/board/addok")
	public String addok(Model model, BoardDTO dto, Authentication auth) {
		
		
		CustomUser cuser = (CustomUser)auth.getPrincipal();
		UserDTO udto = cuser.getUdto();
		
		//System.out.println("auth: " + auth.getPrincipal());
		//System.out.println(cuser.getUsername());
		//System.out.println(udto.getId());
		
		dto.setId(udto.getId());
		
		mapper.add(dto);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/board/edit")
	public String edit(Model model, String seq) {
		
		BoardDTO dto = mapper.get(seq);
		
		model.addAttribute("dto", dto);
		
		return "board.edit";
	}
	@PostMapping("/board/editok")
	public String editok(Model model, BoardDTO dto) {
		
		mapper.edit(dto);
		
		return "redirect:/board/view?seq=" + dto.getSeq();
	}

	@GetMapping("/board/del")
	public String del(Model model, String seq) {
		
		mapper.del(seq);
		
		return "redirect:/board/list";
	}
	
}
