package com.entity;

public class BillDtls {
	
	private int billid;
	private String connectionid;
	private String billformonth; 
	private String currentreading; 
	private String previousreading; 
	private String totalunit;
	private String chargeperunit;
	private String finalamount; 
	private String duedate; 
	private String status;
	
	public BillDtls() {
		
	}
	public BillDtls(String connectionid, String billformonth, String currentreading, String previousreading,
			String totalunit, String chargeperunit, String finalamount, String duedate, String status) {
		super();
		this.connectionid = connectionid;
		this.billformonth = billformonth;
		this.currentreading = currentreading;
		this.previousreading = previousreading;
		this.totalunit = totalunit;
		this.chargeperunit = chargeperunit;
		this.finalamount = finalamount;
		this.duedate = duedate;
		this.status = status;
	}
	
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	
	public String getConnectionid() {
		return connectionid;
	}
	public void setConnectionid(String connectionid) {
		this.connectionid = connectionid;
	}
	
	public String getBillformonth() {
		return billformonth;
	}
	public void setBillformonth(String billformonth) {
		this.billformonth = billformonth;
	}
	
	public String getCurrentreading() {
		return currentreading;
	}
	public void setCurrentreading(String currentreading) {
		this.currentreading = currentreading;
	}
	
	public String getPreviousreading() {
		return previousreading;
	}
	public void setPreviousreading(String previousreading) {
		this.previousreading = previousreading;
	}
	
	public String getTotalunit() {
		return totalunit;
	}
	public void setTotalunit(String totalunit) {
		this.totalunit = totalunit;
	}
	
	public String getChargeperunit() {
		return chargeperunit;
	}
	public void setChargeperunit(String chargeperunit) {
		this.chargeperunit = chargeperunit;
	}
	
	public String getFinalamount() {
		return finalamount;
	}
	public void setFinalamount(String finalamount) {
		this.finalamount = finalamount;
	}
	
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "BillDtls [billid=" + billid + ", connectionid=" + connectionid + ", billformonth=" + billformonth
				+ ", currentreading=" + currentreading + ", previousreading=" + previousreading + ", totalunit="
				+ totalunit + ", chargeperunit=" + chargeperunit + ", finalamount=" + finalamount + ", duedate="
				+ duedate + ", status=" + status + "]";
	}
}