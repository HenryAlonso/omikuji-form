package com.henryalonso.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@GetMapping("/")
	public String home() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String showOmikuji(HttpSession session, Model model) {
		String answers = (String) session.getAttribute("omikujiAnswers");
		model.addAttribute("result", answers);
		return "show.jsp";
	}
	
	@PostMapping("/submit")
	public String saveForm(
		@RequestParam(value="formNumber") int formNumber,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="organism") String organism,
		@RequestParam(value="compliment") String compliment,
		HttpSession session
			) {
		String omikujiAnswers = String.format("In %s years you will live in %s with %s as your roommate,"
				+ " %s for a living. The next time you see a %s, you will have good luck. Also, %s.",
				formNumber, city, person, hobby, organism, compliment);
		
		session.setAttribute("omikujiAnswers", omikujiAnswers);
		
		return "redirect:/omikuji/show";
	}
	
}
