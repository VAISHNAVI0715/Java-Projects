package bms;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Customer ob=new Customer();
		ob.setName("Simran", "Paaji");
		ob.setEmail("paajiburrahhhh@aajfridayhai.com");
		ob.setMobile("1234567890");	
		ob.getCustomerDetails();
		
		Movies mv = new Movies();
		mv.setName("Pols aa gyii!!");
		mv.setRating(10.0);
		mv.setreleaseDate("10/11/2022");
		mv.setlang("Punjabi");
		mv.setMovieId("#pap");
		mv.getMoviesDetails();
		
		Theatre th=new Theatre();
		th.setTheatreDetails("Chandu Cinema","Jahangirpuri, New Delhi","North-West Delhi", 6969 , 69, 6969);
		th.getTheatreDetails();
		
		Ticket ti=new Ticket();
		ti.setTicketDetails("#pap69", 2, 150, "Booked");
		ti.setTicketDetails("#pap69", 2, 150, "Cancelled");
		ti.getTicketDetails();
		
		Payment pay=new Payment();
		pay.setPaymentDetails(mv.releaseDate, ti.price*ti.quantity, "UPI/ID", "paaji.6969@paytm", "Cancelled");
		pay.getPaymentDetails();
	}

}
