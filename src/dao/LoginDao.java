package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import bean.LoginBean;
import connection.DbConnection;

public class LoginDao {
	
	 public static Connection getConnection(){
	        Connection con=null;
	        try{
	            con= DbConnection.getConnection();
	        }catch(Exception e){System.out.println(e);}
	        return con;
	    }
	 
	public LoginBean userlogin(String user,String pass) throws SQLException {
		 
	            Connection con=LoginDao.getConnection();
	            PreparedStatement ps=con.prepareStatement("select * from user where username=? and password=?");
	            ps.setString(1,user);
	            ps.setString(2,pass);
	            ResultSet rs=ps.executeQuery();
	            LoginBean lgbean =null;
	            if(rs.next()){
	            	lgbean = new LoginBean();
	            	lgbean.setUser(rs.getString(1));
	            	lgbean.setPass(rs.getString(2));
	            	lgbean.setRole(rs.getString(3));
	            }
	            con.close();	        
	        return lgbean;
	    }
	 

}
