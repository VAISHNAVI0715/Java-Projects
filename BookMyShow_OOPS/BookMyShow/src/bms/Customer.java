package bms;

public class Customer {
 private String firstName;
 private String lastName;
 private String mobile;
 private String emailId;
 

 void setName(String firstName, String lastName) {
	 this.firstName=firstName;
	 this.lastName=lastName;
	 }
  void setEmail(String emailId)
 {
	 this.emailId=emailId;
 }
  void setMobile(String mobile)
 {
	 this.mobile=mobile;
 }
  void getCustomerDetails()
 {
	System.out.println("Name : "+firstName+" "+lastName);
	System.out.println("Mobile Number : "+mobile);
	System.out.println("Email ID : "+emailId);
 }
 
}
