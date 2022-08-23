package com.teamludo.ludogame.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.teamludo.ludogame.models.Board;

public interface BoardRepository extends CrudRepository<Board, Long> {
	List<Board> findAll();
}
