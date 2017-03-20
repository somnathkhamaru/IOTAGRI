package unitofWork.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.SensorData;
import unitofWork.Uservalidation;

public class UservalidationImpl implements Uservalidation {
	public String validateuser(String id, String pass)
	{
		String message="FAIL";
		Connection con = null;
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			String jdbcurl ="jdbc:db2://dashdb-entry-yp-dal09-08.services.dal.bluemix.net:50000/BLUDB";
			String user = "dash11787";
			String password ="4cf6e6d8345a";
			con = DriverManager.getConnection(jdbcurl, user, password);
			con.setAutoCommit(false);
			Statement stmt = null;
			String sqlStatement = "";
			try {
				stmt = con.createStatement();
				sqlStatement = "SELECT id from DASH11787.admin where id ='"+id+"' and password='"+pass+"'";				
				System.out.println(sqlStatement);
				ResultSet rs = stmt.executeQuery(sqlStatement);
				int i = 0;
				while (rs.next()) {
					message="PASS";
					
				}
				System.out.println("Message:"+message);
				//con.close();
			} catch (SQLException e) {

					System.out.println(e);

				}
			} catch (ClassNotFoundException ex) {
				System.out.println(ex);  
			}
			catch (Exception e) {
				System.out.println(e); 
			}
				
		 /*finally{
				try {
					//con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}*/

		
		return message;
	}

}
