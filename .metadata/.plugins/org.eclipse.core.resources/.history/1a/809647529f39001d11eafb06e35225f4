<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.awt.Taskbar.State"%>
<%@page import="com.db.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="UserHeader.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>My Cart</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>

<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg)){
%>

<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>

<%
if("inc".equals(msg)){
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>

<%
if("dec".equals(msg)){
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>

<%
if("removed".equals(msg)){
%>
<h3 class="alert">food Successfully Removed!</h3>
<%} %>

<table>
<thead>
<%
int total=0;
int sno=0;

try{
	
	Connection conn=MyConnection.connect();
	Statement st= conn.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where username='"+username+"'and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
		
	}

%>


          <tr>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %> </th>
            <%
            	if(total>0){
            %>
            <th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th>
            <%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Food Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      
      		ResultSet rs=st.executeQuery("select * from food inner join cart on food.foodid=cart.food_id and cart.username='"+username+"' and cart.address is NULL");	
      		while(rs.next()){	
      %>
          <tr>
			<%sno=sno+1; %>
           <td><%out.println(sno);%></td>
            <td><%out.println(rs.getString(2)); %></td>
            <td><%out.println(rs.getString(3)); %></td>
            <td><i class="fa fa-inr"></i> <%out.println(rs.getString(4)); %></td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getInt(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a> <%out.println(rs.getString(8)); %> <a href="incDecQuantityAction.jsp?id=<%=rs.getInt(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i><%out.println(rs.getString(10));%> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getInt(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
		<%
      		}
}catch(Exception e){
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