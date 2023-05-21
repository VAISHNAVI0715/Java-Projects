package com.lalu.model;

import javax.persistence.*;

@Entity
public class custModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column (name = "custCode" ,length =5)
	private int custCode;
	@Column (name = "firstName" ,length =15)
	private String firstName;
	@Column (name = "lastName" ,length =15)
	 private String lastName;
	@Column (name = "mobile" ,length =20)
	 private String mobile;
	@Column (name = "emailId" ,length =30)
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
