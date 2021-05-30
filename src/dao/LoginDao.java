package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	 
	 
	 @SuppressWarnings({ "null", "unlikely-arg-type" })
	public String userlogin(LoginBean loginbean){
		 String user = loginbean.getUser();
		 String pass = loginbean.getPass();
		 
		 String dbuser;
		 String dbpas;

	        try{
	            Connection con=LoginDao.getConnection();
	            PreparedStatement ps=con.prepareStatement("select * from user where username=? and password=?");
	            ps.setString(1,user);
	            ps.setString(2,pass);
	            ResultSet rs=ps.executeQuery();
	            if(rs.next()){
	            	dbuser = rs.getString(1);
	                dbpas= rs.getString(2);
	                if(user.equals(dbuser) && pass.equals(dbpas))
	                {
	                	
	                	return "success";
	                	
	                }
	            }
	            con.close();
	        }catch(Exception e){System.out.print("error");}

	        return "error";
	    }
	 

}
