package com.yuliapianova.fullCrudSaveTravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.yuliapianova.fullCrudSaveTravels.model.Expense;
import com.yuliapianova.fullCrudSaveTravels.services.ExpenseService;

@Controller
public class MainController {
	
	@Autowired
	private ExpenseService expenseService;
	
	
	
	    //root route, show all expenses
	
	@GetMapping("/")  
	public String index() {
		return "redirect:/expenses";
	}
	    // all expenses
	
	@GetMapping("/expenses") 
	public String expenses(Model model) {
		model.addAttribute("expenses", expenseService.all());
		return "index.jsp";
	}
	
	
	       //form to create a new one
	
	@GetMapping("/expenses/new")  // a form for creating a new one
	public String newExpense(@ModelAttribute("expense")Expense expense) {
		return "newExpense.jsp";
	}
	@PostMapping("/expenses") // actually POST a new expense on "/expenses"
	public String create (@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "newExpense.jsp";
		}else {
			expenseService.create(expense);
			return "redirect:/expenses";
		}
	}
	
	
	       // show one expense
	
	@GetMapping("/expenses/{expenseId}")
	public String showOne(Model model, @PathVariable("expenseId")Long expenseId) {
		Expense expense = expenseService.find(expenseId);
		System.out.println(expense);
		model.addAttribute("expense", expense);
		return "oneExpense.jsp";
	}
	
	       // edit one expense
	
	@GetMapping("expenses/{id}/edit")  // edit form
	public String edit (@PathVariable("id")Long id, Model model) {
		Expense expense = expenseService.find(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	@PutMapping("expenses/{id}")       // actually updated on "/expenses"
	public String update (@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if ( result.hasErrors()) {
			return "edit.jsp";
		} else {
			expenseService.update(expense);
			return "redirect:/expenses";
			
		}
		}
	
	        // delete one expense
	
	@DeleteMapping("expenses/{id}")
	public String destroy (@PathVariable ("id")Long id) {
		expenseService.delete(id);
		return "redirect:/expenses";
	}
	}
		
	
	
	
	
	
	
		
	
	
	


