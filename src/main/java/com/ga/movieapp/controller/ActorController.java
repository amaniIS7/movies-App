package com.ga.movieapp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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



		//Add actor  - get request
		@GetMapping("/actor/add")
		public ModelAndView addActor() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("actor/add");
			
			HomeController hc = new HomeController();
			hc.setAppName(mv, env);
			
			var it = moviedao.findAll();
			mv.addObject("movie", it);
			
			return mv; 
		}
		
		//Add actor - post request
		public String addActor(Actor actor) {
			dao.save(actor);
			return "redirect:/actor/index";
		}
		
		
		


}