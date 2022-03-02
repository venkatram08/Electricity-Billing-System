package com.entity;

public class CustomerDtls {
    
	private int customerid;
	private String customername;
	private String contact;
	private String email;
	private String password;
	private String address;
	private String city;
	private String state;
	
	public CustomerDtls() {
	
	}
	
	public CustomerDtls(String customername, String contact, String email, String password, String address, String city,
			String state) {
		super();
		this.customername = customername;
		this.contact = contact;
		this.email = email;
		this.password = password;
		this.address = address;
		this.city = city;
		this.state = state;
	}
	
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "CustomerDtls [customerid=" + customerid + ", customername=" + customername + ", contact=" + contact
				+ ", email=" + email + ", password=" + password + ", address=" + address + ", city=" + city + ", state="
				+ state + "]";
	}	
}