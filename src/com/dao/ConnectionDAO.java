package com.dao;

import java.util.List;

import com.entity.ConnectionDtls;

public interface ConnectionDAO {
	
	//insert User Registration 
    public boolean addConnection(ConnectionDtls cd);
    
   //Show View Employee Details Notes code here
  	public List<ConnectionDtls> getViewConnection();

}
