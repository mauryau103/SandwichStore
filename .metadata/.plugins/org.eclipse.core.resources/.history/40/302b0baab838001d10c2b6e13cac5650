<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"%>
<% 
int id=Integer.parseInt(request.getParameter("foodid"));
String name=request.getParameter("name");
String category=request.getParameter("category");
int price=Integer.parseInt(request.getParameter("price"));
String active=request.getParameter("active");


try{
	Connection conn=MyConnection.connect();
	PreparedStatement ps=conn.prepareStatement("insert into food values(?,?,?,?,?)");
	ps.setInt(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setInt(4,price);
	ps.setString(5,active);
	
	ps.executeUpdate();
	response.sendRedirect("addNewFood.jsp?msg=done");
	
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewFood.jsp?msg=wrong");
}
%>