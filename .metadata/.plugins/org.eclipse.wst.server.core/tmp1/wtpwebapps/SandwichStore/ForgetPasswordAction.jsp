<%@page import="javax.xml.xpath.XPathEvaluationResult.XPathResultType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"%>
<%
String emailid=request.getParameter("email");
String username=request.getParameter("username");
String newpassword=request.getParameter("password");

int check=0;
try{
	Connection conn=MyConnection.connect();
	Statement st=conn.createStatement();
	ResultSet rs= st.executeQuery("select *  from sanduser where emailid='"+emailid+"' and username='"+username+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update sanduser set Password='"+newpassword+"'where username='"+username+"'");
		response.sendRedirect("ForgetPassword.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("ForgetPassword.jsp?msg=invalid");
	}
}
catch(Exception e){
	System.out.println(e);
	
}
%>