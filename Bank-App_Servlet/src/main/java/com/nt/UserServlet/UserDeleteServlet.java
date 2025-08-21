package com.nt.UserServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.service.UserService;

public class UserDeleteServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		
		boolean isDelete = UserService.deleteUser(accountNo);
		
		RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
		
		if(isDelete){
			req.setAttribute("successMsg", "Customer Account Delete Succefully");
		}else {
			req.setAttribute("errorMsg", "Customer Account Delete Succefully");
		}
		
		rd.forward(req, resp);
	}
	
}
