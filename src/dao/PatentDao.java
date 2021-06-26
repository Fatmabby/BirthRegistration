package dao;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;

import bean.BirthBean;
import bean.PatentBean;
import connection.DbConnection;

public class PatentDao {
	
	public static int savePatent(PatentBean pb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into pregnantreg(first_name,last_name,address,dob,phone,user,password) values(?,?,?,?,?,?,?)");
			ps.setString(1, pb.getFirst_name());
			ps.setString(2, pb.getLast_name());
			ps.setString(3, pb.getAddress());
			ps.setString(4, pb.getDob());
			ps.setString(5, pb.getPhone());
			ps.setString(6, pb.getUser());
			ps.setString(7, pb.getPassword());
		
			
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
				 pb.setDob(rs.getString(5));
				 pb.setPhone(rs.getString(6));
				 pb.setUser(rs.getString(7));
				 pb.setPassword(rs.getString(8));
								 
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
				 pb.setDob(rs.getString(5));
				 pb.setPhone(rs.getString(6));
				 pb.setUser(rs.getString(7));
				 pb.setPassword(rs.getString(8));
			 }
			 con.close();
			
		}catch(Exception ex) {ex.printStackTrace();}
		return pb;
	}
	
}
