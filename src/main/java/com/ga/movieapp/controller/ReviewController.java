package com.ga.movieapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.movieapp.dao.ReviewDao;
import com.ga.movieapp.model.Movie;
import com.ga.movieapp.model.Review;

@Controller
public class ReviewController {

	@Autowired 
	private Environment env;

	// HTTP GET REQUEST - Review Add
	@GetMapping("/review/add")
	public ModelAndView addReview() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review/add");
		
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		
		return mv;
	}
	
	@Autowired
	private ReviewDao dao;
	
	// HTTP POST REQUEST - Review Add
	@PostMapping("/review/add")
	public String addReview(Review review) {
		dao.save(review);
		
//		int id = review.getMovie().getId();
		Movie id = review.getMovie();
		System.out.println(id);
		
//		return "redirect:/movie/detail?id="+id;
		return "redirect:/review/index"; //TODO redirect to /movie/detail?id={the specific movie id we add the review in}
	}
	
	// HTTP GET REQUEST - Review Index
	@GetMapping("/review/index")
	public ModelAndView getReview() {
		var it = dao.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review/index");
		mv.addObject("reviews", it);
		
//		HomeController hc = new HomeController();
//		hc.setAppName(mv, env);
		
		return mv;
	}

	/*
	 * // HTTP GET REQUEST - Review Edit
	 * 
	 * @GetMapping("/review/edit") public ModelAndView editReview(@RequestParam int
	 * id) { Review review = dao.findById(id);
	 * 
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("review/edit");
	 * mv.addObject("review", review);
	 * 
	 * HomeController hc = new HomeController(); hc.setAppName(mv, env);
	 * 
	 * 
	 * return mv; }
	 */
	
	// HTTP GET REQUEST - Review Delete
	@GetMapping("/review/delete")
	public String deleteReview(@RequestParam int id) {

		dao.deleteById(id);
		return "redirect:/review/index";
	}

//	// HTTP GET REQUEST - Review Detail
//	@GetMapping("/review/detail")
//	public ModelAndView reviewDetails(@RequestParam int id) {
//		System.out.println(id);
//		
//		Review review = dao.findById(id);
//		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("review/detail");
//		mv.addObject("review", review);
//		
//		HomeController hc = new HomeController();
//		hc.setAppName(mv, env);
//		
//		return mv;
//		
//	}


}
