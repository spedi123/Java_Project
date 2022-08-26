package com.teamludo.ludogame.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamludo.ludogame.models.Board;
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
		Integer dice = Board.rollDice();
		List<Horse>horseList = horseService.allHorsesOfBoard((long) 1);
		List<Integer> horsePositionList = horseService.allPosOfBoard((long) 1);
		
		model.addAttribute("dice", dice);
		model.addAttribute("horsePositionList", horsePositionList);
		model.addAttribute("horseList", horseList);
		
		return "index.jsp";
	}
	
	@PostMapping("/test1/move")
	public String currentTestMove(Model model, 
			@RequestParam(value="fromPos") Integer fromPos,
			@RequestParam(value="toPos") Integer toPos,
			@RequestParam(value="dice") Integer dice
			) {
		List<Horse>horseList = horseService.allHorsesOfBoard((long) 1);
		List<Integer> horsePositionList = horseService.allPosOfBoard((long) 1);
		
		
		
		if(
			horsePositionList.contains(fromPos) && 
			horseList.get(horsePositionList.indexOf(fromPos)).isAddPos(dice, toPos)
				) {
			Horse thisHorse = horseList.get(horsePositionList.indexOf(fromPos));
			thisHorse.setPosition(toPos);
			horseService.saveHorse(thisHorse);
			model.addAttribute("dice", dice);
			model.addAttribute("horsePositionList", horsePositionList);
			model.addAttribute("horseList", horseList);
			return "redirect:/test1";
		}
		model.addAttribute("dice", dice);
		model.addAttribute("horsePositionList", horsePositionList);
		model.addAttribute("horseList", horseList);
		return "index.jsp";
	}
	
	
}
