package com.nt.UserServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.entity.User;
import com.nt.service.UserService;

public class GetUserServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		  System.out.println(accountNo);
		  User user = UserService.getUser(accountNo);
		  System.out.println(user);
		  
		  if(user!=null) {
			    RequestDispatcher rd = req.getRequestDispatcher("userdisplay.jsp");
			 	req.setAttribute("u", user);
			 	rd.forward(req, resp);
			}else {
			    RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
				req.setAttribute("errorMsg", "Customer Not Present");
				rd.forward(req, resp);
			}
			
			
	}

}
