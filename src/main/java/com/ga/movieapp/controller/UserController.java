package com.ga.movieapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.ga.movieapp.model.User;
import com.ga.movieapp.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	private Environment env;
	
	@Autowired
	private UserDao dao;
	
	@Autowired
	HttpServletRequest request;
	
	// Routes 
	// To load the registration form
	   @GetMapping("/user/registration")
	   public ModelAndView registration() {
		   
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("user/registration");
		   
		   HomeController hc = new HomeController();
		   hc.setAppName(mv, env);
		   
		   return mv;
	   }
	
	// To post the registration form
	 @PostMapping("/user/registration")
	 public ModelAndView registration(User user) {
		

		 
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("home/index");
		 
		 HomeController hc = new HomeController();
		 hc.setAppName(mv, env);
		 
		 // Check to user is already registered or not
		 
		 var it = dao.findAll();
		 System.out.println(it);
		 
		 for(User dbUser : it) {
			 System.out.println(dbUser.getUserName());
			 if(dbUser.getUserName().equals(user.getUserName())) {
			
				 mv.addObject("message", "User already exists");
				 return mv;
			 }
		 }
		 
		 
		 // Password Encryption
		 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		 String newPassword = bCrypt.encode(user.getPassword());
		 user.setPassword(newPassword);
		 
		 dao.save(user);
		 mv.addObject("message", "User registered successfully");
		 
		 return mv;
		 
	 }
	 
		// To load the login form
		@GetMapping("/login")
		public ModelAndView login() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("user/login");
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			return mv;
		}
//	
//	// To post the login form
//	 @PostMapping("/user/login")
//	 public String login(User user) {
//		 
//		 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
//		 
//		 String userName = user.getUserName();
//		 String password = user.getPassword();
//		 
//		 User matchedUser = dao.findByUserName(userName);
//		 HttpSession session = request.getSession();
//		 session.setAttribute("userName", password);
//		 session.setAttribute("out", "user " + matchedUser.getPassword() );
//		 if(matchedUser != null) {
//			 if(bCrypt.matches(password, matchedUser.getPassword())) {
//				  session.setAttribute("in", "password error");
//				 // Session
//				  session.setAttribute("user", matchedUser);
//				  session.setAttribute("userRole", matchedUser.getRoleUser());
//				  
//				  session.setAttribute("message", "you are logged in successfully");
//				  
//				  return "redirect:/";
//				 
//			 }
//		 }
//		 
//		 session.setAttribute("message", "emailAddress or password is incorrect");
//		 return "redirect:/user/login";
//	 }
//		
//		// To invalidate the current user session
//	 @GetMapping("/user/logout")
//	 public String logout() {
//		 HttpSession session = request.getSession();
//		 session.invalidate();
//		 
//		 return "redirect:/user/login";
//	 }
}
