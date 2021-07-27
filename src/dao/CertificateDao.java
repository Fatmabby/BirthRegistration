package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import bean.CertificateBean;
import connection.DbConnection;

public class CertificateDao {

	public static CertificateBean getCertificateById(int id) {
		CertificateBean cb =new CertificateBean();
		try {
			Connection con =DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from 	certificate where patent_id =?");
			ps.setInt(1, id);
			ResultSet rs =ps.executeQuery();
			
             while(rs.next()) {
            	 cb.setFname(rs.getString(1));
				 cb.setLname(rs.getString(2));
				 cb.setAddress(rs.getString(3));
				 cb.setChild_name(rs.getString(4));
				 cb.setDob(rs.getString(5));
				 cb.setGender(rs.getString(6));
				 cb.setFather(rs.getString(7));
				 cb.setPob(rs.getString(8));
				 cb.setCervical(rs.getString(9));			
             }
			 con.close();
			
		}catch(Exception ex) {ex.printStackTrace();}
		return cb;
	}
}
