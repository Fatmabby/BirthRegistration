package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.LoginBean;
import bean.StaffBean;
import connection.DbConnection;

public class StaffDao {
	
	public static StaffBean userlogin(String user,String pass) throws SQLException {
		 
        Connection con=DbConnection.getConnection();
        PreparedStatement ps=con.prepareStatement("select * from staff where username=? and password=?");
        ps.setString(1,user);
        ps.setString(2,pass);
        ResultSet rs=ps.executeQuery();
        StaffBean sbean =null;
        if(rs.next()){
        	sbean = new StaffBean();
        	sbean.setUsername(rs.getString("username"));
        	sbean.setPassword(rs.getString("password"));
        	sbean.setRole(rs.getString("role"));
        }
        con.close();	        
    return sbean;
}
	
	public static int saveStaff(StaffBean sb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into staff(fname,middle_name,last_name,gender,dob,address,email,phone,username,password,role) values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, sb.getFname());
			ps.setString(2, sb.getMiddle_name());
			ps.setString(3, sb.getLast_name());
			ps.setString(4, sb.getGender());
			ps.setString(5, sb.getDob());
			ps.setString(6, sb.getAddress());
			ps.setString(7, sb.getEmail());
			ps.setString(8, sb.getPhone());
			ps.setString(9, sb.getUsername());
			ps.setString(10, sb.getPassword());
			ps.setString(11, sb.getRole());
		
			
			result = ps.executeUpdate();
			con.close();


		}catch(Exception ex ) {
			ex.printStackTrace();
		}
		return result;
	}
	public  static  List<StaffBean> getAllStaff(){
		 List<StaffBean> list= new ArrayList<StaffBean>();
		 try {
			 Connection con =DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from staff");
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()) {
				 StaffBean sb = new StaffBean();
				 sb.setStaff_id(rs.getInt(1));
				 sb.setFname(rs.getString(2));
				 sb.setMiddle_name(rs.getString(3));
				 sb.setLast_name(rs.getString(4));
				 sb.setGender(rs.getString(5));
				 sb.setDob(rs.getString(6));
				 sb.setAddress(rs.getString(7));
				 sb.setEmail(rs.getString(8));
				 sb.setPhone(rs.getString(9));
				 sb.setUsername(rs.getString(10));
				 sb.setPassword(rs.getString(11));
				 sb.setRole(rs.getString(11));
				
								 
				 list.add(sb);
			 }
			 con.close();
		 }catch(Exception ex){ex.printStackTrace();}
		 
		 return list;
		
	}
	 

}
