package com.nt.UserServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.entity.User;
import com.nt.service.UserService;

public class UserUpdateServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long mobile = Long.parseLong( req.getParameter("mobile"));
		String address = req.getParameter("address");
		String pin = req.getParameter("pin");
		
		User u = new User(accountNo,name, email, mobile, address, pin);
		
		boolean isUpdate = UserService.updateUser(u);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isUpdate) {
			req.setAttribute("successMsg", "Customer Update Succefully");
		}else {
			req.setAttribute("errorMsg", "Customer Not Update Succefully");
		}
		
		rd.forward(req, resp);
		
	}

}
