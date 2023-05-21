package bms;

public class Payment {
private String Date;
private int Amount;
private String Type;
private String id;
private String status;


void setPaymentDetails(String Date, int Amount, String Type, String id, String status)
{
	this.Date=Date;
	this.Amount=Amount;
	this.Type=Type;
	this.id=id;
	this.status=status;
}
void cancel()
{
	System.out.println("Refund Amount is : "+Amount);
}
void getPaymentDetails()
{
	System.out.println("Date : "+Date);
	System.out.println("Amount : "+Amount);
	System.out.println("Type :"+Type);
	System.out.println("Payment ID :"+id);
	//System.out.println("Status : "+status);
	if(status.equals("Cancelled"))
		System.out.println("Refund Amount is : "+Amount);
}
}
