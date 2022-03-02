package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BillDtls;
import com.entity.ConnectionDtls;

public class BillDAOImpl implements BillDAO{

	

	private Connection conn;
	
	public BillDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


    // Insert Bill Data Here
	@Override
	public boolean addBill(BillDtls bd) {
		
		boolean f = false;
		try {
			String sql = "insert into bill(connectionid,billformonth,currentreading,previousreading,totalunit,chargeperunit,finalamount,duedate,status) values(?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, bd.getConnectionid());
			ps.setString(2, bd.getBillformonth());
			ps.setString(3, bd.getCurrentreading());
			ps.setString(4, bd.getPreviousreading());
			ps.setString(5, bd.getTotalunit());
			ps.setString(6, bd.getChargeperunit());
			ps.setString(7, bd.getFinalamount());
			ps.setString(8, bd.getDuedate());
			ps.setString(9, "Not Paid");
						
			int i = ps.executeUpdate();
			
			if (i == 1) {
				f = true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return f;
	}
	
    // View Bill Data
	
	@Override
	public List<BillDtls> getViewBill() {
		
		List<BillDtls> list = new ArrayList<BillDtls>();
		BillDtls bd = null;
		
		try {
			String sql = "select * from bill";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
	  			bd= new BillDtls();
	  			bd.setBillid(rs.getInt(1));
	  			bd.setConnectionid(rs.getString(2));
	  			bd.setBillformonth(rs.getString(3));
	  			bd.setCurrentreading(rs.getString(4));
	  			bd.setPreviousreading(rs.getString(5));
	  			bd.setTotalunit(rs.getString(6));
	  			bd.setChargeperunit(rs.getString(7));
	  			bd.setFinalamount(rs.getString(8));
	  			bd.setDuedate(rs.getString(9));
	  			bd.setStatus(rs.getString(10));
	  			list.add(bd);  
			}
		 } catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	
	@Override
	public boolean updateBill(BillDtls b) {
		
		boolean f=false;
		 try {
			String sql= "update bill set status='paid' where billid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, b.getBillid());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}				
		} catch (Exception e) {
         e.printStackTrace();
		}
		return f;
		
	}
	
}
