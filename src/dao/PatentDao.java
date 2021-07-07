package dao;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;


import bean.PatentBean;
import connection.DbConnection;

public class PatentDao {
	
	public static int savePatent(PatentBean pb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into pregnantreg(first_name,last_name,address,nationality,dob,phone,gravida,number_birth,delivery_way,maride,user,password) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, pb.getFirst_name());
			ps.setString(2, pb.getLast_name());
			ps.setString(3, pb.getAddress());
			ps.setString(4, pb.getNationality());
			ps.setString(5, pb.getDob());
			ps.setString(6, pb.getPhone());
			ps.setString(7, pb.getGravida());
			ps.setString(8, pb.getNumber_birth());
			ps.setString(9, pb.getDelivery_way());
			ps.setString(10, pb.getMaride());
			ps.setString(11, pb.getUser());
			ps.setString(12, pb.getPassword());
		
			
			result = ps.executeUpdate();
			con.close();


		}catch(Exception ex ) {
			ex.printStackTrace();
		}
		return result;
	}
	 
	
	public  static  List<PatentBean> getAllPatent(){
		 List<PatentBean> list= new ArrayList<PatentBean>();
		 try {
			 Connection con =DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from pregnantreg");
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()) {
				 PatentBean pb = new PatentBean();
				 pb.setPatent_id(rs.getInt(1));
				 pb.setFirst_name(rs.getString(2));
				 pb.setLast_name(rs.getString(3));
				 pb.setAddress(rs.getString(4));
				 pb.setNationality(rs.getString(5));
				 pb.setDob(rs.getString(6));
				 pb.setPhone(rs.getString(7));
				 pb.setGravida(rs.getString(8));
				 pb.setNumber_birth(rs.getString(9));
				 pb.setDelivery_way(rs.getString(10));
				 pb.setMaride(rs.getString(11));
				 pb.setUser(rs.getString(12));
				 pb.setPassword(rs.getString(13));
								 
				 list.add(pb);
			 }
			 con.close();
		 }catch(Exception ex){ex.printStackTrace();}
		 
		 return list;
		
	}
	
	public static PatentBean getPatentById(int id) {
		PatentBean pb =new PatentBean();
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from 	pregnantreg where patent_id =?");
			ps.setInt(1, id);
			ResultSet rs =ps.executeQuery();
			
             while(rs.next()) {
            	 pb.setPatent_id(rs.getInt(1));
				 pb.setFirst_name(rs.getString(2));
				 pb.setLast_name(rs.getString(3));
				 pb.setAddress(rs.getString(4));
				 pb.setNationality(rs.getString(5));
				 pb.setDob(rs.getString(5));
				 pb.setPhone(rs.getString(6));
				 pb.setGravida(rs.getString(7));
				 pb.setNumber_birth(rs.getString(8));
				 pb.setDelivery_way(rs.getString(9));
				 pb.setMaride(rs.getString(10));
				 pb.setUser(rs.getString(11));
				 pb.setPassword(rs.getString(12));
			 }
			 con.close();
			
		}catch(Exception ex) {ex.printStackTrace();}
		return pb;
	}
	
}
