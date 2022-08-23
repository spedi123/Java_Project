package com.teamludo.ludogame.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.teamludo.ludogame.models.Horse;
import com.teamludo.ludogame.models.Player;

public interface HorseRepository extends CrudRepository<Horse, Long> {
	List<Horse> findAll();
	List<Horse> findAllByPlayer(Player player);
}
