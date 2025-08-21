package com.nt.bankServiceServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.service.BankService;

public class TransactionServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		double money = Double.parseDouble(req.getParameter("money"));
		int uaccountNo = (int) session.getAttribute("uaccountNo");
		
		
		boolean isTransfer = BankService.transfer(uaccountNo, accountNo, money);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isTransfer) {
			req.setAttribute("successMsg", "Transaction Succefull");
		}else {
			req.setAttribute("errorMsg", "Transaction Failed");
		}
		
		rd.forward(req, resp);
	}

}
