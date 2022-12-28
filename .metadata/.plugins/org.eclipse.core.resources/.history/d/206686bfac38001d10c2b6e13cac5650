<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"
     %>
   <%@ include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>All food & Edit food</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: Black; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>

<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>

<%

if("wrong".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       		try{
       			Connection conn=MyConnection.connect();
       			Statement st=conn.createStatement();
       			ResultSet rs=st.executeQuery("select * from food");
       			while(rs.next())
       			{
       %>
          <tr>
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getInt(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="editFood.jsp?id=<%=rs.getInt(1)%>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
         <%
       			}
       		}
       catch(Exception e){
    	   System.out.println(e);
       }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>