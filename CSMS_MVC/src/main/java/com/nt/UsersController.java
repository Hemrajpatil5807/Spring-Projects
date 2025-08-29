package com.nt;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nt.entity.Users;
import com.nt.service.UsersService;

@Controller
public class UsersController {

	
	@Autowired
	UsersService usersService;
	
	// Register User / Add User
	@PostMapping("/registerUser")
	public ModelAndView register(@ModelAttribute Users user) {
		
//		Users user = new Users("Sagar Patil", "sagarpatil0134@gmail.com", "sagar@0134", "ADMIN");
		 System.out.println(user);
		 usersService.registerUser(user);
		
		 return new ModelAndView("register", "message", "User registered successfully!");
	}
	
	@PostMapping("/adduser")
	public ModelAndView addUser(@ModelAttribute Users user , Model model) {
		
//		Users user = new Users("Sagar Patil", "sagarpatil0134@gmail.com", "sagar@0134", "ADMIN");
		 System.out.println(user);
		 usersService.registerUser(user);
		 model.addAttribute("message", "User Added Successfully !");
		
		 return manageUsers();
	}
	
	
	// Login User
	@RequestMapping("/loginUser")
	public String loginUser(@RequestParam String email, @RequestParam String password, HttpSession session, Model model) {
		
	   Users user = usersService.loginUser(email, password);
		
		if(user!=null) {
			session.setAttribute("username", user.getName());
			model.addAttribute("message" , "Login Succefully !");
			return "admin/admindash";
			
		}else {
			model.addAttribute("message" , "Invalid Credentials");
		    return "login";
		}
		
	}
	
	
	@RequestMapping("/manageusers")
	public ModelAndView manageUsers() {
		
		 List<Users> users = usersService.getUsers();
//		 model.addAllAttributes(users);
		
	    return new ModelAndView("admin/users/user", "users", users); 	
	}
	
	@PostMapping("/updateuser")
	public String updateUser(@ModelAttribute("bean") Users user , Model model) {
		
		System.out.println(user);
		boolean isUpdated = usersService.updateUser(user);
		
		if(isUpdated) {
			 model.addAttribute("message", "User Update Successfully !");
			 return "forward:/manageusers"; 
		}else {
			 model.addAttribute("message", "User Not Updated !");
        	 return "forward:/manageusers"; 
		}	
	}
	
	@GetMapping("/deleteuser/{id}")
	public ModelAndView deleteUser(@PathVariable int id , Model model) {
		
		System.out.println(id);
		boolean isDelete = usersService.deleteUser(id);
		if(isDelete) {
			 model.addAttribute("message", "User Delete Successfully !");
			 return manageUsers(); 
		}else {
			 model.addAttribute("message", "User Not Deleted !");
         	 return manageUsers(); 
		} 
	}
	
	
	
	
}
