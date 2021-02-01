package com.ga.movieapp.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.movieapp.dao.ActorDao;
import com.ga.movieapp.dao.MovieDao;
import com.ga.movieapp.model.Actor;


@Controller
public class ActorController {

	//CRUD OPERATIONS
		// C -> Create = 
		// R -> Select = 
		// U -> Update = 
		// D -> Delete = 


		@Autowired
		private Environment env;
		
		@Autowired
		private MovieDao moviedao;
		
		@Autowired 
		private ActorDao dao;
//		@Autowired
//		HttpServletRequest request;



		//Add actor  - get request
		@GetMapping("/actor/add")
		public ModelAndView addActor() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("actor/add");
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			
			return mv; 
		}
		
		//Add actor - post request
		@PostMapping("/actor/add")
		public String addActor(Actor actor) {
			dao.save(actor);
//			
//			HttpSession session = request.getSession();
//			if (!actor.getName().equals("")) {
//				session.setAttribute("message", "your adding successfully");
//				return "redirect:/actor/index";
//			}else {
//				session.setAttribute("message", "your adding not successfully");
			return "redirect:/actor/index";
//			}
		}
		
		// index actor - get request 
		@GetMapping("/actor/index")
		public ModelAndView getActor() {
			var it = dao.findAll();
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("actor/index");
			mv.addObject("actor", it);
			
			HomeController hc =new HomeController();
			hc.setAppName(mv, env);
			
			return mv; 
		}
		
		// detail actor - get request 
		@GetMapping("/actor/deteil")
		public ModelAndView actorDetails(@RequestParam int id ) {
			System.out.println(id);
			
			Actor actor = dao.findById(id);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("actor/detail");
			mv.addObject("actor",actor);
			
			HomeController hc =new HomeController();
			hc.setAppName(mv, env);
			
			return mv; 
}}