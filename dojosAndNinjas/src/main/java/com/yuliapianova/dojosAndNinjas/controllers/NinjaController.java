package com.yuliapianova.dojosAndNinjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.yuliapianova.dojosAndNinjas.models.Dojo;
import com.yuliapianova.dojosAndNinjas.models.Ninja;
import com.yuliapianova.dojosAndNinjas.services.AppService;

@Controller
public class NinjaController {
	@Autowired
	private AppService service;
	
	@GetMapping("/ninja/new")
	public String newNinja ( @ModelAttribute("ninja") Ninja ninja, Model viewModel) {
		List<Dojo> allDojos=this.service.allDojos();
		viewModel.addAttribute("allDojos",allDojos);
		return "newNinja.jsp";
		
	}
	
	@PostMapping("/ninja/create")
	public String createNinja (@Valid @ModelAttribute("ninja") Ninja ninja, Model viewModel, BindingResult result) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = this.service.allDojos();
			viewModel.addAttribute("allDojos", allDojos);
			return "NewNinja.jsp";
		}
		this.service.createNinja(ninja);
		return "redirect:/dojo/" + ninja.getDojo().getId();
	}
	

}
