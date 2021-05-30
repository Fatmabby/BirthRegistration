package connection;

import java.sql.DriverManager;


import com.mysql.jdbc.Connection;

public class DbConnection {
	public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/birthdb","root","");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
}
