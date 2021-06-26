package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.BirthBean;
import connection.DbConnection;

public class BirthDao {
	
	public static int saveBirth(BirthBean bb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into birthform(patent_id,name_child,gender,dob,weight,birth_place, father_name,phone_no) values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, bb.getPatent_id());
			ps.setString(2, bb.getName_child());
			ps.setString(3, bb.getGender());
			ps.setString(4, bb.getDob());
			ps.setString(5, bb.getWeight());
			ps.setString(6, bb.getBirth_place());
			ps.setString(7, bb.getFather_name());
			ps.setString(8, bb.getPhone_no());
			
			result = ps.executeUpdate();
			con.close();


		}catch(Exception ex ) {
			ex.printStackTrace();
		}
		return result;
	}
	public  static  List<BirthBean> getAllBirt(){
		 List<BirthBean> list= new ArrayList<BirthBean>();
		 try {
			 Connection con =DbConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from birthform");
			 ResultSet rs = ps.executeQuery();
			 while(rs.next()) {
				 
				 BirthBean bb = new BirthBean();
				 bb.setBirth_id(rs.getInt(1));
				 bb.setPatent_id(rs.getInt(2));
				 bb.setName_child(rs.getString(3));
				 bb.setGender(rs.getString(4));
				 bb.setDob(rs.getString(5));
				 bb.setWeight(rs.getString(6));
				 bb.setBirth_place(rs.getString(7));
				 bb.setFather_name(rs.getString(8));
				 bb.setPhone_no(rs.getString(9));
				 
				 
				 list.add(bb);
			 }
			 con.close();
		 }catch(Exception ex){ex.printStackTrace();}
		 
		 return list;
		
	}
	
	
	public static BirthBean getBirthById(int id) {
		BirthBean bb =new BirthBean();
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from birthform where birth_id =?");
			ps.setInt(1, id);
			ResultSet rs =ps.executeQuery();
			
             while(rs.next()) {
				 bb.setBirth_id(rs.getInt(1));
				 bb.setPatent_id(rs.getInt(2));
				 bb.setName_child(rs.getString(3));
				 bb.setGender(rs.getString(4));
				 bb.setDob(rs.getString(5));
				 bb.setWeight(rs.getString(6));
				 bb.setBirth_place(rs.getString(7));
				 bb.setFather_name(rs.getString(8));
				 bb.setPhone_no(rs.getString(9));
			 }
			 con.close();
			
		}catch(Exception ex) {ex.printStackTrace();}
		return bb;
	}
	
	public static int updateBirth(BirthBean bb) {
		int result =0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update birthform set name_child=?,	gender=?,dob=?,	weight=?,birth_place=?,father_name=?,phone_no=? where birth_id =?");

			ps.setString(1, bb.getName_child());
			ps.setString(2, bb.getGender());
			ps.setString(3, bb.getDob());
			ps.setString(4, bb.getWeight());
			ps.setString(5, bb.getBirth_place());
			ps.setString(6, bb.getFather_name());
			ps.setString(7, bb.getPhone_no());
			ps.setInt(8, bb.getBirth_id());
			
			result = ps.executeUpdate();
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		return result;
	}
	
	public static int delete(int id) {
		int status =0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from  birthform where birth_id =?");
			ps.setInt(1, id);
	       status=ps.executeUpdate();
	       con.close();
			
		}catch(Exception ex) {ex.printStackTrace();}
		return status;
	}
	
}


