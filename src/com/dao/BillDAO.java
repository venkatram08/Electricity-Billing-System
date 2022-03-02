package com.dao;

import java.util.List;

import com.entity.BillDtls;
import com.entity.ConnectionDtls;

public interface BillDAO {

	//insert User Registration 
    public boolean addBill(BillDtls bd);
    
    //Show View Employee Details Notes code here
  	public List<BillDtls> getViewBill();
  	
  	public boolean updateBill(BillDtls b);
}
