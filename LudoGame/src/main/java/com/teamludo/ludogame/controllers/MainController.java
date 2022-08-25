package com.teamludo.ludogame.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.teamludo.ludogame.models.Horse;

@Controller
public class MainController {

	@Autowired
	LudoService ludoServ;
	
	@Autowired
	UserService userServ;
	
	@GetMapping("/ludo_game")
	public String home(@Valid @ModelAttribute Horse position, BindingResult result, HttpSession session, Model model) {
//		if(session.getAttribute("userId") == null) {
//			 return "redirect: /logout";
//		 }
		
		
		return "game.jsp";
	}
	
	@PostMapping()
	public String home() {

	
	
}
}
