package com.nt.bankServiceServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.service.BankService;

public class CreditServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		double amount = Double.parseDouble(req.getParameter("amount"));
		
		boolean isCredit = BankService.credit(accountNo, amount);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isCredit) {
			req.setAttribute("successMsg", "Amount Credit Succefully.");
		}else{
			req.setAttribute("errorMsg", "Amount Not Credited.");
		}
		rd.forward(req, resp);
	}

}
