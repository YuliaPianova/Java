package com.yuliapianova.fullCrudSaveTravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.yuliapianova.fullCrudSaveTravels.model.Expense;
import com.yuliapianova.fullCrudSaveTravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepo;
	
	public ExpenseService(ExpenseRepository expenseRepo) {
        this.expenseRepo = expenseRepo;
    }
	
	// show  all the expenses
    public List<Expense> all() {
        return expenseRepo.findAll();
    }
    // creates an expense
    public Expense create(Expense oneExp) {
        return expenseRepo.save(oneExp);
    }
    // updates an expense
    public Expense update(Expense oneExp) {
        return expenseRepo.save(oneExp);
    }
    // show one expense
    public Expense find(Long id) {
        Optional<Expense> optional = expenseRepo.findById(id);
        if(optional.isPresent()) {
            return optional.get();
        } else {
            return null;
        }
    }
    
    //delete one expense
    public void delete(Long id) {
    	expenseRepo.deleteById(id);
    }

}
	

