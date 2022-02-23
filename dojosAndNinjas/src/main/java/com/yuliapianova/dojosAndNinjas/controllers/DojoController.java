package com.yuliapianova.dojosAndNinjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.yuliapianova.dojosAndNinjas.models.Dojo;
import com.yuliapianova.dojosAndNinjas.services.AppService;

@Controller
public class DojoController {
	
	@Autowired
	private AppService service;
	
	@GetMapping("/")
	public String index() {
		return "redirect:/dojo/new";
	}
	
	@GetMapping("/dojo/new")  // shows the form to create a new dojo
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		
		return "newDojo.jsp";
		
	}
	
	@PostMapping("/dojo/create") // actually created dojo
	public String  createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		}else {
			this.service.createDojo(dojo);
			return "redirect:/ninja/new";
		}
	}
	
	@GetMapping("/dojo/{id}") 
	public String oneDojo(Model viewModel, @PathVariable("id") Long id) {
		viewModel.addAttribute("dojo", this.service.getDojoById(id));
		
		return "dojoDetails.jsp";
		
		
	}

}
