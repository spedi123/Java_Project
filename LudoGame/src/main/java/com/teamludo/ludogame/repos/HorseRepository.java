package com.teamludo.ludogame.repos;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.teamludo.ludogame.models.Horse;
import com.teamludo.ludogame.models.Player;

public interface HorseRepository extends CrudRepository<Horse, Long> {
	List<Horse> findAll();
	List<Horse> findAllByPlayer(Player player);
	
	@Query(value="SELECT horses.id, horses.created_at, horses.on_board, horses.position, horses.updated_at, player_id FROM boards JOIN (players JOIN horses ON players.id = horses.player_id) ON boards.id = players.board_id WHERE boards.id = ?1", nativeQuery=true)
	List<Horse> findAllByBoard(Long id);
}
