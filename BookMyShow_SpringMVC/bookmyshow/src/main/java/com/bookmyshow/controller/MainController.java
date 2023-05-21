package com.bookmyshow.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bookmyshow.dao.BookingDao;
import com.bookmyshow.model.Booking;
import com.bookmyshow.model.Cinemas;
import com.bookmyshow.model.Movies;
import com.bookmyshow.model.User;
import com.bookmyshow.dao.CinemaDao;
import com.bookmyshow.dao.MoviesDao;
import com.bookmyshow.dao.UserDao;

@Controller
public class MainController {

	@Autowired
	private BookingDao bookingDao;
	
	@Autowired
	private CinemaDao cinemaDao;
	
	@Autowired
	private MoviesDao movieDao;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/")
	public String get_login()
	{
		return"login";
	}

	@RequestMapping(value="/auth", method=RequestMethod.POST)
	public String getAuth(Model model, HttpServletRequest req)
	{
		String e=req.getParameter("email");
		String p=req.getParameter("password");
		List<User> users=userDao.getUsers();
		boolean check=false;
		for(int i=0;i<users.size();i++)
		{
			if(e.equals(users.get(i).getEmail()) && p.equals(users.get(i).getPassword()))
				{check=true; break;}
		}
		if(check) 
			return "home";
		else
			return "invalid";
	}
	@RequestMapping("/home")
	public String get_home(Model model)
	{
		List<Movies> movies=movieDao.getMovies();
		model.addAttribute("movies",movies);
		return "home";
	}
	@RequestMapping("/book")
	public String booking(Model model_movie, Model model_cinema)
	{
		List<Movies> movies=movieDao.getMovies();
		List<Cinemas> cinemas=cinemaDao.getCinemas();
		model_movie.addAttribute("movies",movies);
		model_cinema.addAttribute("cinemas",cinemas);
		return "book";
	}
	
	@RequestMapping(value="/user-registration",method=RequestMethod.POST)
	public String userReg(@ModelAttribute User user)
	{
		System.out.println(user);
		userDao.createUser(user);
		return "reg_confirm";
	}
	
	@RequestMapping(value="/book-confirmation",method=RequestMethod.POST)
	public String handle(@ModelAttribute Booking booking, Model model)
	{
		model.addAttribute("booking",booking);
		bookingDao.createBooking(booking);
		return "confirmation";
	}
	
	@RequestMapping("/history")
	public String history(Model model)
	{
		List<Booking> bookings=bookingDao.getBookings();
		model.addAttribute("bookings",bookings);
		return "history";
	}
	
	@RequestMapping("/movies")
	public String get_movies(Model model)
	{
		List<Movies> movies=movieDao.getMovies();
		model.addAttribute("movies",movies);
		return "movies";
	}
	
	@RequestMapping("/cinemas")
	public String get_cinemas(Model model)
	{
		List<Cinemas> cinemas=cinemaDao.getCinemas();
		model.addAttribute("cinemas",cinemas);
		return "cinemas";
	}
	
	@RequestMapping("/contact_us")
	public String get_contact()
	{
		return "contact";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return "registration";
	}
}
