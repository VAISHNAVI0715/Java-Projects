package com.bookmyshow.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bookmyshow.model.Cinemas;

@Component
public class CinemaDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createCinema(Cinemas cinema)
	{
		this.hibernateTemplate.save(cinema);
	}
	
	public List<Cinemas> getCinemas()
	{
		List<Cinemas> cinemas=this.hibernateTemplate.loadAll(Cinemas.class);
		return cinemas;
	}
	
	public Cinemas getCinema(String name)
	{
		return this.hibernateTemplate.get(Cinemas.class, name);
	}
}
