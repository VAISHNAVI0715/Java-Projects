package com.lalu.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class Controller1 {
	
	@RequestMapping("/")
	public String display()
	{
		return "welc";
	}
	@RequestMapping("/displayList")
	public String displayList(HttpServletRequest request,Model model){
	
	{//handle the user data
		String firstName=request.getParameter("fname");
		String lastName=request.getParameter("lname");
		//adding captured value to model
		model.addAttribute("userFirstName",firstName);
		model.addAttribute("userLastName",lastName);
		
	// send the data to view
		return "list";
	}

}}
