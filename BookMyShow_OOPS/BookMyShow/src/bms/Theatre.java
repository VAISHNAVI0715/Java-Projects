package bms;

public class Theatre {
private String name;
private String address;
private String location;
private int theatreID;
private int screens;
private int seats;

void setTheatreDetails(String name, String address, String location,int theatreID, int screens, int seats)
{
	this.name=name;
	this.address=address;
	this.location=location;
	this.theatreID=theatreID;
	this.screens=screens;
	this.seats=seats;
}
void getTheatreDetails()
{
	System.out.println();
	System.out.println("Name : "+name);
	System.out.println("Address : "+address);
	System.out.println("Location : "+location);
	System.out.println("Theatre ID : "+theatreID);
	System.out.println("Total Screens : "+screens);
	System.out.println("Total Seats : "+seats);
}
}
