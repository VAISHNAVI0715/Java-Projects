package com.bookmyshow.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Booking {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingid;
	private String movieName;
	private String cinemaName;
	private String date;
	private String time;
	private String seats;
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getCinemaName() {
		return cinemaName;
	}
	public void setCinemaName(String cinemaName) {
		this.cinemaName = cinemaName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	public Booking(int bookingid, String movieName, String cinemaName, String date, String time, String seats) {
		super();
		this.bookingid = bookingid;
		this.movieName = movieName;
		this.cinemaName = cinemaName;
		this.date = date;
		this.time = time;
		this.seats = seats;
	}
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Booking [bookingid=" + bookingid + ", movieName=" + movieName + ", cinemaName=" + cinemaName + ", date="
				+ date + ", time=" + time + ", seats=" + seats + "]";
	}
	
	
}
