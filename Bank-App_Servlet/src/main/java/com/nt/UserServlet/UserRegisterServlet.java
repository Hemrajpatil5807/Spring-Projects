package com.nt.UserServlet;

import java.io.IOException;

import com.nt.entity.User;
import com.nt.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegisterServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		String address = req.getParameter("address");
		String pin = req.getParameter("pin");
		int branchId = Integer.parseInt(req.getParameter("branchId"));
		double balance = Double.parseDouble(req.getParameter("balance"));
		
		User u = new User(name, email, mobile, address, pin, branchId, balance);
		
		boolean isAdded = UserService.register(u);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isAdded) {
			req.setAttribute("successMsg", "Customer Register Successfully");
		}else {
			req.setAttribute("errorMsg", "Customer Not Register Successfully");
		}
		
		rd.forward(req, resp);
		
	}

}
