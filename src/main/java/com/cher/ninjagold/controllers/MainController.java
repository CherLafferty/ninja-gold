package com.cher.ninjagold.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class MainController {
	public ArrayList<String> activities = new ArrayList<String>();
	
	@GetMapping("/")
	public String index(HttpSession session, Model model, LocalDateTime localDateTime) {
		
		if(session.getAttribute("gold") == null) {
			session.setAttribute("gold", 0);
			
		}
		//before page renders add actvities
		model.addAttribute("activities", activities);
		//localDateTime.toLocalTime();
		
		
		return "index.jsp";
	}

	@PostMapping("/")
	public String process(@RequestBody() String postData, HttpSession session ) {
		
		String location = postData.substring(0, postData.indexOf("="));
		
		System.out.println(location);
		Random random = new Random();
		int randomNum = 0;
		int gold = (int)session.getAttribute("gold");
		String text = "You entered a ";
		
		switch(location) {
			case "farm":
				randomNum = random.nextInt(10) + 10;
				
				break;
			case "cave":
				randomNum = random.nextInt(5) + 5;
				break;
			case "house":
				randomNum = random.nextInt(3) + 2;
				break;
			case "quest":
				randomNum = random.nextInt(50);
				break;
				
		}
		text += location + " and earned " + gold + " gold.";
		gold += randomNum;
		session.setAttribute("gold", gold);
		activities.add(text);
		
		return "redirect:/";
	}
	
}
