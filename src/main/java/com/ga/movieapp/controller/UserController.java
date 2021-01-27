package com.ga.movieapp.controller;

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
	
	// To load the registration form
	   @GetMapping("/user/registration")
	   public ModelAndView registration() {
		   
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("user/registration");
		   
		   HomeContorller hc = new HomeContorller();
		   hc.setAppName(mv, env);
		   
		   return mv;
	   }
	   
		// To post the registration form
		 @PostMapping("/user/registration")
		 public ModelAndView registration(User user) {

			 ModelAndView mv = new ModelAndView();
			 mv.setViewName("home/index");
			 
			 HomeContorller hc = new HomeContorller();
			 hc.setAppName(mv, env);
			 
			 // Check to user is already registered or not
			 
			 var it = dao.findAll();
			 
			 for(User dbUser : it) {
				 if(dbUser.getEmailAddress().equals(user.getEmailAddress())) {
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
			@GetMapping("/user/login")
			public ModelAndView login() {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("user/login");
				
				HomeContorller hc = new HomeContorller();
				hc.setAppName(mv, env);
				
				return mv;
			}

			
}
