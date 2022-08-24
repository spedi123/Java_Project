package com.teamludo.ludogame.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.teamludo.ludogame.models.Board;
import com.teamludo.ludogame.models.Player;
import com.teamludo.ludogame.repos.PlayerRepository;

@Service
public class PlayerService {
	private final PlayerRepository playerRepository;
	public PlayerService(PlayerRepository playerRepository) {
		this.playerRepository = playerRepository;
	}
	
	
	public List<Player> allPlayers(){
		return playerRepository.findAll();
	}
	
	public Player savePlayer(Player p) {
		return playerRepository.save(p);
	}
	
	public Player findPlayer(Long id) {
		Optional<Player> optionalPlayer = playerRepository.findById(id);
		if(optionalPlayer.isPresent()) {
			return optionalPlayer.get();
		}
		else {
			return null;
		}
	}
	
	public void deletePlayer(Long id) {
		playerRepository.deleteById(id);
	}
	
	public List<Player> allPlayersOfBoard(Board board) {
		return playerRepository.findAllByBoard(board);
	}
}
