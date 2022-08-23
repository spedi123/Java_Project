package com.teamludo.ludogame.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.teamludo.ludogame.models.Horse;
import com.teamludo.ludogame.repos.HorseRepository;

@Service
public class HorseService {
	private final HorseRepository horseRepository;
	public HorseService(HorseRepository horseRepository) {
		this.horseRepository = horseRepository;
	}
	
	
	public List<Horse> allHorses(){
		return horseRepository.findAll();
	}
	
	public Horse saveHorse(Horse h) {
		return horseRepository.save(h);
	}
	
	public Horse findHorse(Long id) {
		Optional<Horse> optionalHorse = horseRepository.findById(id);
		if(optionalHorse.isPresent()) {
			return optionalHorse.get();
		}
		else {
			return null;
		}
	}
	
	public void deleteHorse(Long id) {
		horseRepository.deleteById(id);
	}
}
