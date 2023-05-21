package bms;

public class Ticket {
String ticketID;
int quantity;
int price;
String status;

void setTicketDetails(String ticketID, int quantity, int price, String status)
{
	this.ticketID=ticketID;
	this.quantity=quantity;
	this.price=price;
	this.status=status;
}
void getTicketDetails()
{
	System.out.println();
	System.out.println("Ticket ID : "+ticketID);
	System.out.println("Quantity : "+quantity);
	System.out.println("Price : "+price);
	System.out.println("Status : "+status);
		
		
}
}
