package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Registration;

import com.mysql.jdbc.Connection;

import bean.PatentBean;
import bean.Registration;
import bean.RegistrationBean;
import connection.DbConnection;

public class RegistrationDao {
	
	public static int savePatent(Registration rb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into pregnantreg(fname,lname,hname,address,dob,contact,reg_date) values(?,?,?,?,?,?,?)");
			ps.setString(1, rb.getFullname());
			ps.setString(2, rb.getHusbandname());
			ps.setString(3, rb.getAddress());
			ps.setString(4, rb.getDob());
			ps.setString(5, rb.getGravida());
			ps.setString(6, rb.getOperation());
			ps.setString(7, rb.getBlood_group());
			ps.setString(8, rb.getPhone());
			ps.setString(9, rb.getReg_date());
			
			result = ps.executeUpdate();
			con.close();


		}catch(Exception ex ) {
			ex.printStackTrace();
		}
		return result;
	}
	public  static  List<RegistrationBean> getAllPatent(){
		 List<PatentBean> list= new ArrayList<RegistratinBean>();
		 try {
			 Connection con =DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from pregnantreg");
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()) {
				 RegistrationBean rb = new RegistrationBean();
				 rb.setPatent_id(rs.getInt(1));
				 rb.setFullname(rs.getString(2));
				 rb.setHusbandname(rs.getString(3));
				 rb.setAddress(rs.getString(4));
				 rb.setDob(rs.getString(5));
				 rb.setGravida(rs.getString(6));
				 rb.setOperation(rs.getString(7));
				 s
				 
				 list.add(rb);
			 }
			 con.close();
		 }catch(Exception ex){ex.printStackTrace();}
		 
		 return list;

}
