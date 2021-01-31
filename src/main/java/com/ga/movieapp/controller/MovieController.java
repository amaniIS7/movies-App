package com.ga.movieapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.movieapp.dao.ActorDao;
import com.ga.movieapp.dao.MovieDao;
import com.ga.movieapp.model.Movie;

@Controller
public class MovieController {

	@Autowired 
	private Environment env;
	
	@Autowired
	private ActorDao actordao;

	// HTTP GET REQUEST - Movie Add
	@GetMapping("/movie/add")
	public ModelAndView addMovie() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/add");
		
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var it = actordao.findAll();
		mv.addObject("actors", it);
		
		return mv;
	}
	
	@Autowired
	private MovieDao dao;
	
	// HTTP POST REQUEST - Movie Add
	@PostMapping("/movie/add")
	public String  addMovie(Movie movie) {
		dao.save(movie);
		
		return "redirect:/movie/index";
	}
	
	// HTTP GET REQUEST - Movie Index
	@GetMapping("/movie/index")
	public ModelAndView getMovie() {
		var it = dao.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/index");
		mv.addObject("movies", it);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}

	// HTTP GET REQUEST - Movie Edit
	@GetMapping("/movie/edit")
	public ModelAndView editMovie(@RequestParam int id) {
		Movie movie = dao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/edit");
		mv.addObject("movie", movie);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var it = actordao.findAll();
		mv.addObject("actors", it);
		
		
		return mv;
	}
	
	// HTTP GET REQUEST - Movie Delete
	@GetMapping("/movie/delete")
	public String deleteMovie(@RequestParam int id) {

		dao.deleteById(id);
		return "redirect:/movie/index";
	}

	// HTTP GET REQUEST - Movie Detail
	@GetMapping("/movie/detail")
	public ModelAndView movieDetails(@RequestParam int id) {
		System.out.println(id);
		
		Movie movie = dao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/detail");
		mv.addObject("movie", movie);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
		
	}


}
