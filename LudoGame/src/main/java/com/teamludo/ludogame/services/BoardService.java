package com.teamludo.ludogame.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.teamludo.ludogame.models.Board;
import com.teamludo.ludogame.repos.BoardRepository;

@Service
public class BoardService {
	private final BoardRepository boardRepository;
	public BoardService(BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}
	
	
	public List<Board> allBoards(){
		return boardRepository.findAll();
	}
	
	public Board saveBoard(Board b) {
		return boardRepository.save(b);
	}
	
	public Board findBoard(Long id) {
		Optional<Board> optionalBoard = boardRepository.findById(id);
		if(optionalBoard.isPresent()) {
			return optionalBoard.get();
		}
		else {
			return null;
		}
	}
	
	public void deleteBoard(Long id) {
		boardRepository.deleteById(id);
	}
}
