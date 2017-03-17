package unitofWork.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import unitofWork.InsertSensorData;

public class InsertSensorDataImpl implements InsertSensorData {
	public String insertSensorDataInDashDb(String type, String value)  throws Exception
	{
		String msg="";
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
				System.out.println(type);
				if(type.equalsIgnoreCase("Temperature"))
				{
					sqlStatement = "INSERT into  DASH11787.IOT_TEMPERATURE ( TEMPERATURE,TIME_STAMM) values("+value+",current timestamp)";
					System.out.println(sqlStatement);
					stmt.executeUpdate(sqlStatement);
					con.commit();
					con.close();
				}
				else if (type.equalsIgnoreCase("humidity"))
				{
					sqlStatement = "INSERT into  DASH11787.IOT_HUMIDITY ( HUMIDITY,TIME_STAMP) values("+value+",current timestamp)";
					System.out.println(sqlStatement);
					stmt.executeUpdate(sqlStatement);
					con.commit();
					con.close();
				}
				else if (type.equalsIgnoreCase("moisture"))
				{
					sqlStatement = "INSERT into  DASH11787.IOT_MOISTURE ( MOISTURE,TIME_STAMP) values("+value+",current timestamp)";
					System.out.println(sqlStatement);
					stmt.executeUpdate(sqlStatement);
					con.commit();
					con.close();
				}
			
			} catch (SQLException e) {
				System.out.println(e);
			}
		} catch (ClassNotFoundException ex) {
			System.out.println(ex);
		}
		 finally{
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		return msg;
		
	}
	

}
