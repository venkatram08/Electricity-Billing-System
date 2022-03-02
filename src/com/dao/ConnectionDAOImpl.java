package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.ConnectionDtls;
import com.entity.CustomerDtls;

public class ConnectionDAOImpl implements ConnectionDAO{
	
	private Connection conn;
	
	public ConnectionDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	//Add Connection Here
	@Override
	public boolean addConnection(ConnectionDtls cd) {
		boolean f = false;  
		                                                                                         
		try {
			String sql = "insert into connection(connectionid,customerid,connectiontype,connectionstartdate,occupation,connectionload,plotno,city,pincode,address,state,description) values(?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, cd.getConnectionid());
			ps.setInt(2, cd.getCustomerid());
			ps.setString(3, cd.getConnectiontype());
			ps.setString(4, cd.getConnectionstartdate());
			ps.setString(5, cd.getOccupation());
			ps.setString(6, cd.getConnectionload());
			ps.setString(7, cd.getPlotno());
			ps.setString(8, cd.getCity());
			ps.setString(9, cd.getPincode());
			ps.setString(10, cd.getAddress());
			ps.setString(11, cd.getState());
			ps.setString(12, cd.getDescription());
						
			int i = ps.executeUpdate();
			
//			String sql1 = "insert into bill(connectionid) values(?)";
//			PreparedStatement ps1 = conn.prepareStatement(sql1);
//			ps1.setInt(1, cd.getCustomerid());
//			ps1.executeUpdate();
				
			if (i == 1) {
				f = true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return f;		
	}	
	
	//View Connection details here
	@Override
	public List<ConnectionDtls> getViewConnection() {
		List<ConnectionDtls> list = new ArrayList<ConnectionDtls>();
		ConnectionDtls cd = null;
		
		try {
			String sql = "select * from connection";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
	  			cd= new ConnectionDtls();
	  			cd.setConnectionid(rs.getString(1));
	  			cd.setCustomerid(rs.getInt(2));
	  			cd.setConnectiontype(rs.getString(3));
	  			cd.setConnectionstartdate(rs.getString(4));
	  			cd.setOccupation(rs.getString(5));
	  			cd.setConnectionload(rs.getString(6));
	  			cd.setPlotno(rs.getString(7));
	  			cd.setCity(rs.getString(8));
	  			cd.setPincode(rs.getString(9));
	  			cd.setAddress(rs.getString(10));
	  			cd.setState(rs.getString(11));
	  			cd.setDescription(rs.getString(12));
	  			list.add(cd);  
			}
		 } catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	
}