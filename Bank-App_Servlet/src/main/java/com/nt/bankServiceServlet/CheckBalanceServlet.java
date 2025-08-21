package com.nt.bankServiceServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.service.BankService;

public class CheckBalanceServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		  
		  double balance = BankService.checkBalance(accountNo); 
		  
		  RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		  
		  req.setAttribute("balance", balance);
		  
		  rd.forward(req, resp);
		
	}

}
