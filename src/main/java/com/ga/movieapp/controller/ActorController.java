package com.ga.movieapp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class actorController {

	//CRUD OPERATIONS
		// C -> Create = Done
		// R -> Select = Done
		// U -> Update = Done
		// D -> Delete = Done
		
		
		@Autowired
		private Environment env;
		
		
		
//		//Add actor 
//		@GetMapping("/actor/add")
//		public ModelAndView addActor() {
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("actor/add");
//			
//		}
		
		
}


