package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import unitofWork.InsertSensorData;
import unitofWork.impl.InsertSensorDataImpl;



public class InsertDataServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse response) {
    	// Read from request
		
		String type=req.getParameter("type");
	    String state=req.getParameter(type);
		
		System.out.println("Val :"+state+ "Type:"+type);
		InsertSensorData ins= new InsertSensorDataImpl();
		try {
			String message= ins.insertSensorDataInDashDb(type, state);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     

 }
}
