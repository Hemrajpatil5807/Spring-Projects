package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nt.dto.ExpensesDto;
import com.nt.entity.Expenses;
import com.nt.entity.Materials;
import com.nt.service.ExpenseService;



@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
	
	@PostMapping("/registerexpense")
	public ModelAndView registerExpense(@ModelAttribute ExpensesDto expense) {
		
//		System.out.println(expense);
		expenseService.addExpense(expense);
		
		return new ModelAndView("admin/admindash", "message" ,"Expense Added Succefully !");
		
	}
	
//	@PostMapping("/addexpense")
//	public ModelAndView addExpense(@ModelAttribute ExpensesDto expense) {
//		
//		System.out.println(material);
//		expenseService.addExpense(expense);
//		
//		return manageExpenses();
//		
//	}
	
	@RequestMapping("/manageexpenses")
	public ModelAndView manageExpenses() {
		
		 List<Expenses> expenses = expenseService.getExpenses();
		
	    return  new ModelAndView("admin/expenses/expense", "expenses", expenses); 	
	}
	
	
	

}
