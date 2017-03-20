package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import unitofWork.InsertSensorData;
import unitofWork.Uservalidation;
import unitofWork.ViewSensorData;
import unitofWork.impl.InsertSensorDataImpl;
import unitofWork.impl.UservalidationImpl;
import unitofWork.impl.ViewSensorDataImpl;



public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forwardingPage = "/admin.jsp";
        String Id=request.getParameter("id");
        System.out.println("user :"+Id);
        String Pwd=request.getParameter("password");
        System.out.println("password:"+Pwd);
        String Message="Message";
        Uservalidation ins= new UservalidationImpl();

		if(Id== null || Id.isEmpty()){
			Message="Username is mandatory";
			System.out.println("MY Message :"+Message);
            request.setAttribute("msg", Message);
            request.setAttribute("wronguser", Id);
            forwardingPage = "/loginfailed.jsp";
		}
		else{
			if(Pwd==null|| Pwd.isEmpty()){
				Message="Password is mandatory";
				System.out.println("MY Message :"+Message);
				request.setAttribute("msg", Message);
				request.setAttribute("wronguser", Id);
				forwardingPage = "/loginfailed.jsp";
			}	
			else{
				Message=ins.validateuser(Id,Pwd);
				System.out.println("Message"+Message);
				if(Message.equalsIgnoreCase("PASS"))
				{       	
						
					forwardingPage = "/admin.jsp";
					System.out.println("The user"+Id);

					request.setAttribute("user",Id);
										
				}
				else{
					Message="Sorry, You are not part of IOT AGRICULTURE TEAM ADMIN";
					forwardingPage = "/loginfailed.jsp";
					request.setAttribute("wronguser", Id);
					request.setAttribute("msg", Message);
				}
									
			}
		}
		forward(request, response, forwardingPage);           
    }
    private void forward(HttpServletRequest request,
			HttpServletResponse response, String url) throws ServletException,
			IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	} 
    
}
