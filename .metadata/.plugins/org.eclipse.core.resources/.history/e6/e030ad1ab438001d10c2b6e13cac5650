<%@page import="javax.xml.xpath.XPathEvaluationResult.XPathResultType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");


if("admin".equals(username)&& "admin".equals(password)){
	session.setAttribute("username",username);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z=0;
	try(Connection conn=MyConnection.connect()){
		String sql="select *  from sanduser where username=? and password=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,username);
		pstmt.setString(2,password);	
		ResultSet rs= pstmt.executeQuery();
		while(rs.next())
		{
			z=1;
			session.setAttribute("username", username);
			response.sendRedirect("UserHome.jsp");
		}
		if(z==0){
			response.sendRedirect("login.jsp?msg=notexist");
		}
	}
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
		
	}
}
%>
