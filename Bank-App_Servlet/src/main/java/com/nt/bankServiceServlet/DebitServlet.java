package com.nt.bankServiceServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.service.BankService;

public class DebitServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		double amount = Double.parseDouble(req.getParameter("amount"));
		
		boolean isDebit = BankService.debit(accountNo, amount);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isDebit) {
			req.setAttribute("successMsg", "Amount Debit Succefully.");
		}else{
			req.setAttribute("errorMsg", "Amount Not Debited.");
		}
		rd.forward(req, resp);
	}

	
}
