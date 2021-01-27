package com.ga.movieapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ga.movieapp.dao.MovieDao;
import com.ga.movieapp.model.Movie;


public class MovieController {

	@Autowired 
	private Environment env;

	// HTTP GET REQUEST - Movie Add
	@GetMapping("/movie/add")
	public ModelAndView addMovie() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/add");
		
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		
		return mv;
	}
	
	@Autowired
	private MovieDao dao;
	
	// HTTP POST REQUEST - Movie Add
	@PostMapping("/movie/add")
	public String addMovie(Movie movie) {
		dao.save(movie);
		
		return "redirect:/movie/index";
	}
	


}
