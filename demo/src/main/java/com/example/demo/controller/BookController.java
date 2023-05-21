package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.BookDao;

@RestController
public class BookController {

	@Autowired
	private BookDao repository;
	
	
	// Now get list of books
	
}
