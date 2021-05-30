package dao;

import java.sql.PreparedStatement;
import com.mysql.jdbc.Connection;

import bean.MaternityBean;
import connection.DbConnection;

public class MaternityDao {

	public static int saveMaternity(MaternityBean mb) {
		int result = 0;
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into maternityroom(patent_id,pressure,hb,fhr,fundal_height,contraction,cervix) values(?,?,?,?,?,?,?)");
			ps.setInt(1, mb.getPatent_id());
			ps.setString(2, mb.getPressure());
			ps.setString(3, mb.getHb());
			ps.setString(4, mb.getFhr());
			ps.setString(5, mb.getFundal_height());
			ps.setString(6, mb.getContraction());
			ps.setString(7, mb.getCervix());
		
			
			result = ps.executeUpdate();
			con.close();


		}catch(Exception ex ) {
			ex.printStackTrace();
		}
		return result;
	}
	 
}
