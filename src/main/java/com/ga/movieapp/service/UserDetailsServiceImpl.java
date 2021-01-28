package com.ga.movieapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.ga.movieapp.dao.UserDao;
import com.ga.movieapp.model.User;
import com.ga.movieapp.model.UserDetailsImpl;

public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	UserDao dao;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException{
		User user = dao.findByUserName(userName);
		
		if(user == null)
			throw new UsernameNotFoundException("Not found");
		
		UserDetailsImpl obj = new UserDetailsImpl(user);
		
		return obj;
	}

}
