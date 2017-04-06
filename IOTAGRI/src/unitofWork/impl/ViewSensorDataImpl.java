package unitofWork.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.SensorData;
import unitofWork.ViewSensorData;

public class ViewSensorDataImpl implements ViewSensorData {
	public List<SensorData> readSensorDataFromDashDb(String type, String startDate,String endDate) throws Exception
	{
		String msg="";
		Connection con = null;
		List<SensorData> SenData = new ArrayList<SensorData>();
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
					if(endDate==null|| endDate.trim().isEmpty())
					{
						sqlStatement = "select * from DASH11787.iot_TEMPERATURE where date(TIME_STAMM) = '"+startDate+"'";
					}
					else
					{
						sqlStatement = "select * from DASH11787.iot_TEMPERATURE where date(TIME_STAMM) BETWEEN '"+startDate+"' AND '"+endDate+"'";
					}
					
				}
				else if (type.equalsIgnoreCase("humidity"))
				{
					if(endDate==null || endDate.trim().isEmpty())
					{
						sqlStatement = "select * from DASH11787.iot_HUMIDITY where date(TIME_STAMP) = '"+startDate+"'";
					}
					else
					{
						sqlStatement = "select * from DASH11787.iot_HUMIDITY where date(TIME_STAMP) BETWEEN '"+startDate+"' AND '"+endDate+"'";
					}
				}
				else if (type.equalsIgnoreCase("moisture"))
				{
					if(endDate==null || endDate.trim().isEmpty())
					{
						sqlStatement = "select * from DASH11787.iot_MOISTURE where date(TIME_STAMP) = '"+startDate+"'";
					}
					else
					{
						sqlStatement = "select * from DASH11787.iot_MOISTURE where date(TIME_STAMP) BETWEEN '"+startDate+"' AND '"+endDate+"'";
					}
				}
				else if (type.equalsIgnoreCase("salinity"))
				{
					if(endDate==null || endDate.trim().isEmpty())
					{
						sqlStatement = "select * from DASH11787.iot_SALINITY where date(TIME_STAMP) = '"+startDate+"'";
					}
					else
					{
						sqlStatement = "select * from DASH11787.iot_SALINITY where date(TIME_STAMP) BETWEEN '"+startDate+"' AND '"+endDate+"'";
					}
				}
				System.out.println(sqlStatement);
				ResultSet rs = stmt.executeQuery(sqlStatement);
				int i = 0;
				while (rs.next()) {
					SensorData sData= new SensorData();
					if(type.equalsIgnoreCase("Temperature"))
					{
					sData.setValue(rs.getString("TEMPERATURE"));
					sData.setParameter("TEMPERATURE");
					sData.setEntryID(rs.getString("RECORD_NO"));
					sData.setTimeStamp(rs.getString("TIME_STAMM"));;
					}
					else if(type.equalsIgnoreCase("humidity"))
					{
					sData.setValue(rs.getString("HUMIDITY"));
					sData.setParameter("HUMIDITY");
					sData.setEntryID(rs.getString("RECORD NO"));
					sData.setTimeStamp(rs.getString("TIME_STAMP"));;
					}
					else if(type.equalsIgnoreCase("moisture"))
					{
					sData.setValue(rs.getString("MOISTURE"));
					sData.setParameter("MOISTURE");
					sData.setEntryID(rs.getString("RECORD NO"));
					sData.setTimeStamp(rs.getString("TIME_STAMP"));;
					}
					else if(type.equalsIgnoreCase("salinity"))
					{
					sData.setValue(rs.getString("SALINITY"));
					sData.setParameter("SALINITY");
					sData.setEntryID(rs.getString("RECORD NO"));
					sData.setTimeStamp(rs.getString("TIME_STAMP"));;
					}
					SenData.add(sData);
				}
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
		return SenData;
		
	}
	

}
