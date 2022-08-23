package com.teamludo.ludogame.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.teamludo.ludogame.models.Board;
import com.teamludo.ludogame.models.Player;

public interface PlayerRepository extends CrudRepository<Player, Long> {
	List<Player> findAll();
	List<Player> findAllByBoard(Board board);
}
