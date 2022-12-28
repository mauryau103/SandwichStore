<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"%>
<%
String name=request.getParameter("name");
String username=request.getParameter("username");
long mobile=Long.parseLong(request.getParameter("mobile"));
String emailId=request.getParameter("email");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";

try{
	Connection conn=MyConnection.connect();
	PreparedStatement ps=conn.prepareStatement("insert into sanduser values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, username);
	ps.setLong(3, mobile);
	ps.setString(4, emailId);
	ps.setString(5, password);
	ps.setString(6, address);
	ps.setString(7, city);
	ps.setString(8, state);
	ps.setString(9, country);
	
	ps.executeUpdate();
	
	response.sendRedirect("SignUp.jsp?msg=valid");
	
	
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("SignUp.jsp?msg=invalid");
	
	
}
%>
