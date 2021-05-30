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
			PreparedStatement ps = con.prepareStatement("insert into pregnantreg(fullname,husbandname,address,dob,gravida,operation,blood_group,phone,reg_date) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, pb.getFullname());
			ps.setString(2, pb.getHusbandname());
			ps.setString(3, pb.getAddress());
			ps.setString(4, pb.getDob());
			ps.setString(5, pb.getGravida());
			ps.setString(6, pb.getOperation());
			ps.setString(7, pb.getBlood_group());
			ps.setString(8, pb.getPhone());
			ps.setString(9, pb.getReg_date());
			
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
				 pb.setFullname(rs.getString(2));
				 pb.setHusbandname(rs.getString(3));
				 pb.setAddress(rs.getString(4));
				 pb.setDob(rs.getString(5));
				 pb.setGravida(rs.getString(6));
				 pb.setOperation(rs.getString(7));
				 pb.setBlood_group(rs.getString(8));
				 pb.setPhone(rs.getString(9));
				 pb.setReg_date(rs.getString(10));
				 
				 list.add(pb);
			 }
			 con.close();
		 }catch(Exception ex){ex.printStackTrace();}
		 
		 return list;
		
	}
	
}
