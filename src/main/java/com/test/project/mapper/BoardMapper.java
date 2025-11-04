package com.test.project.mapper;

import java.util.List;

import com.test.project.model.BoardDTO;

public interface BoardMapper {

	List<BoardDTO> list();

	void add(BoardDTO dto);

	BoardDTO get(String seq);

	void edit(BoardDTO dto);

	void del(String seq);

}
