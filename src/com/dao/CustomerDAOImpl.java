package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.CustomerDtls;

public class CustomerDAOImpl implements CustomerDAO {

	private Connection conn;
	
	public CustomerDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

   // Add Customer Here
	@Override
	public boolean addCustomer(CustomerDtls c) {
		boolean f = false;
		try {
			String sql = "insert into customer(customername,contact,email,password,address,city,state) values(?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getCustomername());
			ps.setString(2, c.getContact());
			ps.setString(3, c.getEmail());
			ps.setString(4, c.getPassword());
			ps.setString(5, c.getAddress());
			ps.setString(6, c.getCity());
			ps.setString(7, c.getState());
						
			int i = ps.executeUpdate();
				
			if (i == 1) {
				f = true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return f;
	}	
	
	//View Customer Details Here
	@Override
	public List<CustomerDtls> getViewCustomer() {
		List<CustomerDtls> list = new ArrayList<CustomerDtls>();
    	CustomerDtls cd = null;
		
		try {
			String sql = "select * from customer";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
	  			cd= new CustomerDtls();
	  			cd.setCustomerid(rs.getInt(1));
	  			cd.setCustomername(rs.getString(2));
	  			cd.setContact(rs.getString(3));
	  			cd.setEmail(rs.getString(4));
	  			cd.setPassword(rs.getString(5));
	  			cd.setAddress(rs.getString(6));
	  			cd.setCity(rs.getString(7));
	  			cd.setState(rs.getString(8));
	  			list.add(cd);  
			}
		 } catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}	
	
	//Admin Login Here
	@Override
	public CustomerDtls loginAdmin(String e, String p) {
		
		CustomerDtls emp = null;
		try {
			String sql = "select * from admin where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, e);
			ps.setString(2, p);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				emp = new CustomerDtls();
				emp.setEmail(rs.getString(1));
				emp.setPassword(rs.getString(2));
			}
		} catch (Exception ex) {
			ex.printStackTrace();				
		}
		return emp;
	}	
}