package com.entity;

public class ConnectionDtls {

	

	private String connectionid;
	private int customerid;
	private String connectiontype;
	private String connectionstartdate;
	private String occupation;
	private String connectionload;
	private String plotno;
	private String city;
	private String pincode;
	private String address;
	private String state;
	private String description;

	public ConnectionDtls() {

	}

	public ConnectionDtls(String connectionid, int customerid, String connectiontype, String connectionstartdate, String occupation,
			String connectionload, String plotno, String city, String pincode, String address, String state,
			String description) {
		super();
		this.connectionid = connectionid;
		this.customerid = customerid;
		this.connectiontype = connectiontype;
		this.connectionstartdate = connectionstartdate;
		this.occupation = occupation;
		this.connectionload = connectionload;
		this.plotno = plotno;
		this.city = city;
		this.pincode = pincode;
		this.address = address;
		this.state = state;
		this.description = description;
	}

	public String getConnectionid() {
		return connectionid;
	}

	public void setConnectionid(String connectionid) {
		this.connectionid = connectionid;
	}

	
	 public int getCustomerid() { 
		 return customerid; 
	} 
	 public void setCustomerid(int customerid) { 
		 this.customerid = customerid; 
	}
	 
	public String getConnectiontype() {
		return connectiontype;
	}

	public void setConnectiontype(String connectiontype) {
		this.connectiontype = connectiontype;
	}

	public String getConnectionstartdate() {
		return connectionstartdate;
	}

	public void setConnectionstartdate(String connectionstartdate) {
		this.connectionstartdate = connectionstartdate;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getConnectionload() {
		return connectionload;
	}

	public void setConnectionload(String connectionload) {
		this.connectionload = connectionload;
	}

	public String getPlotno() {
		return plotno;
	}

	public void setPlotno(String plotno) {
		this.plotno = plotno;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "ConnectionDtls [connectionid=" + connectionid + ", customerid=" + customerid + ", connectiontype="
				+ connectiontype + ", connectionstartdate=" + connectionstartdate + ", occupation=" + occupation
				+ ", connectionload=" + connectionload + ", plotno=" + plotno + ", city=" + city + ", pincode="
				+ pincode + ", address=" + address + ", state=" + state + ", description=" + description + "]";
	}
}