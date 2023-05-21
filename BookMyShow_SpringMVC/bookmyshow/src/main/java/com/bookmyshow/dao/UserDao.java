package com.bookmyshow.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bookmyshow.model.User;

@Component
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createUser(User user) {
		this.hibernateTemplate.save(user);
	}
	
	public List<User> getUsers()
	{
		List<User> users=this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
	public User getUser(String email)
	{
		return this.hibernateTemplate.get(User.class, email);
	}

	
}
