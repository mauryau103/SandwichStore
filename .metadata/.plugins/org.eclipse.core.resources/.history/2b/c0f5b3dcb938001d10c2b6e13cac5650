package com.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.UserImpl;
import com.pojo.SandUser;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Request comes in get");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userAction=request.getParameter("act");
		
		UserImpl impl=new UserImpl();	
		
		if(userAction.equalsIgnoreCase("registerAction")) {
			String name=request.getParameter("name");
			String username=request.getParameter("username");
			long mobile=Long.parseLong(request.getParameter("mobile"));
			String emailId=request.getParameter("email");
			String password=request.getParameter("password");
			String address="";
			String city="";
			String state="";
			String country="";
			
			SandUser sanduser=new SandUser();
			sanduser.setName(name);
			sanduser.setUsername(username);
			sanduser.setMobileNo(mobile);
			sanduser.setEmailId(emailId);
			sanduser.setPassword(password);
			sanduser.setAddress(address);
			sanduser.setCity(city);
			sanduser.setState(state);
			sanduser.setCountry(country);
			
			boolean b=impl.register(sanduser);
			if(b)
				response.sendRedirect("SignUp.jsp?msg=valid");
			else
				response.sendRedirect("SignUp.jsp?msg=invalid");
		}
		else if(userAction.equalsIgnoreCase("loginAction")) {
			
			String username=request.getParameter("username");
			String password=request.getParameter("password");
	
			String name=impl.login(username, password);
			if("admin".equals(username)&& "admin".equals(password)){
					HttpSession session=request.getSession();   
					session.setAttribute("username",username);
					response.sendRedirect("admin/adminHome.jsp");
			}
			else if(name!=null) {
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("UserHome.jsp");
			}
			else
				response.sendRedirect("login.jsp?msg=notexist");
			
		}
		else if (userAction.equalsIgnoreCase("changePasswordAction")) {
			
			String emailid=request.getParameter("email");
			String username=request.getParameter("username");
			String newpassword=request.getParameter("password");

			SandUser sanduser=new SandUser();
			sanduser.setUsername(username);
			sanduser.setEmailId(emailid);
			sanduser.setPassword(newpassword);
			 boolean b=impl.forgetpasswordtest(sanduser);
			if(b)
				response.sendRedirect("ForgetPassword.jsp?msg=done");
			else
				response.sendRedirect("ForgetPassword.jsp?msg=invalid");
		}
		
	}

}
