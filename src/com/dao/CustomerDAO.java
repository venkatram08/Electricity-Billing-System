package com.dao;

import java.util.List;

import com.entity.CustomerDtls;


public interface CustomerDAO {

	//insert User Registration 
    public boolean addCustomer(CustomerDtls c);
    
    //Show View Employee Details Notes code here
  	public List<CustomerDtls> getViewCustomer();
  	
 // insert admin login	
  	public CustomerDtls loginAdmin(String e,String p);
}
