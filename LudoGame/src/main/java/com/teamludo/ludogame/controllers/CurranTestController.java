package com.teamludo.ludogame.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamludo.ludogame.models.Horse;
import com.teamludo.ludogame.services.HorseService;

@Controller
public class CurranTestController {
	
	@Autowired
	private HorseService horseService;
	
	@GetMapping("/test1")
	public String curranTest(
			Model model
			) {
		
		List<Horse>horseList = horseService.allHorsesOfBoard((long) 1);
		Horse horse1 = horseList.get(0);
		ArrayList<Integer> horsePositionList = new ArrayList<Integer>();
		for(int i = 0; i < 16; i++) {
			horsePositionList.add(horseList.get(i).getPosition());
		}
		model.addAttribute("horsePositionList", horsePositionList);
		model.addAttribute("horseList", horseList);
		model.addAttribute("horse1", horse1);
		
		
		
		return "index.jsp";
	}
	
	@PostMapping("/test1/move")
	public String currentTestMove(Model model, 
			@RequestParam(value="fromPos") Integer fromPos,
			@RequestParam(value="toPos") Integer toPos
			) {
		List<Horse>horseList = horseService.allHorsesOfBoard((long) 1);
		Horse horse1 = horseList.get(0);
		ArrayList<Integer> horsePositionList = new ArrayList<Integer>();
		for(int i = 0; i < 16; i++) {
			horsePositionList.add(horseList.get(i).getPosition());
		}

		if(horsePositionList.contains(fromPos)) {
			Horse thisHorse = horseList.get(horsePositionList.indexOf(fromPos));
			thisHorse.setPosition(toPos);
			horseService.saveHorse(thisHorse);
			model.addAttribute("horsePositionList", horsePositionList);
			model.addAttribute("horseList", horseList);
			model.addAttribute("horse1", horse1);
			return "redirect:/test1";
		}
		model.addAttribute("horsePositionList", horsePositionList);
		model.addAttribute("horseList", horseList);
		model.addAttribute("horse1", horse1);
		return "index.jsp";
	}
	
	
}
