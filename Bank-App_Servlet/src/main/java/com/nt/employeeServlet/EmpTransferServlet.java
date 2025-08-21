package com.nt.employeeServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.service.EmployeeService;

public class EmpTransferServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int sendaccountNo = Integer.parseInt(req.getParameter("saccountNo"));
		int recaccountNo = Integer.parseInt(req.getParameter("raccountNo"));
		double amount = Double.parseDouble(req.getParameter("amount"));

		boolean isTransfer = EmployeeService.transfer(sendaccountNo, recaccountNo, amount);

		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");

		if(isTransfer){
			req.setAttribute("successMsg", "Transaction Succefull");
		} else {
			req.setAttribute("errorMsg", "Transaction Failed");
		}

		rd.forward(req, resp);

	}

}
