package com.bookmyshow.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bookmyshow.model.Movies;

@Component
public class MoviesDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createMovies(Movies movie)
	{
		this.hibernateTemplate.save(movie);
	}
	
	public List<Movies> getMovies()
	{
		List<Movies> movies=this.hibernateTemplate.loadAll(Movies.class);
		return movies;
	}
	
	@Transactional
	public void deleteMovie(String name)
	{
		Movies movie=this.hibernateTemplate.load(Movies.class, name);
		this.hibernateTemplate.delete(movie);
	}
	
	public Movies getMovie(String name)
	{
		return this.hibernateTemplate.get(Movies.class, name);
	}
}
