package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.GsonBuilder;

import unitofWork.InsertSensorData;
import unitofWork.ViewSensorData;
import unitofWork.impl.InsertSensorDataImpl;
import unitofWork.impl.ViewSensorDataImpl;

import java.util.ArrayList;
import java.util.List;

import entity.SensorData;


public class ViewDataServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse response) {
    	// Read from request
		
		String type=req.getParameter("type");
	    String StartDate=req.getParameter("startDate");
	    String EndDate=req.getParameter("endDate");
		
		System.out.println("Val :"+StartDate+","+EndDate+ " , Type:"+type);
		ViewSensorData ins= new ViewSensorDataImpl();
		try {
			List<SensorData>  SenData= new ArrayList<SensorData>(); 
			SenData= ins.readSensorDataFromDashDb(type, StartDate, EndDate);
			  String json = null ;
		        json=new GsonBuilder().disableHtmlEscaping().create().toJson(SenData);
		    	System.out.println("POST JSON "+json);	     
		    	response.setContentType("application/json");
		    	response.setCharacterEncoding("UTF-8");
		    	response.getWriter().write(json); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     

 }
}
