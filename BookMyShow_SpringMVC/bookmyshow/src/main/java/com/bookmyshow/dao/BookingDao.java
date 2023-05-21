package com.bookmyshow.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.bookmyshow.model.Booking;

@Component
public class BookingDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createBooking(Booking booking) {
		this.hibernateTemplate.save(booking);
	}
	
	public List<Booking> getBookings()
	{
		List<Booking> bookings=this.hibernateTemplate.loadAll(Booking.class);
		return bookings;
	}
	
	public Booking getBooking(int bookingId)
	{
		return this.hibernateTemplate.get(Booking.class, bookingId);
	}
	
}
