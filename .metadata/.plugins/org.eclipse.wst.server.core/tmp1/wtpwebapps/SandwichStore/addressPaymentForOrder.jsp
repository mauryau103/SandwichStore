<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.awt.Taskbar.State"%>
<%@page import="com.db.MyConnection"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1)!=null)
	window.history.forward(1);
</script>
</head>
<body>
<br>
<table>
<thead>
<%String username =session.getAttribute("username").toString();
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
          <th scope="col"><a href="MyCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </th>
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
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3)); %></td>
            <td><i class="fa fa-inr"></i><%out.println(rs.getString(4));%></td>
            <td><%out.println(rs.getString(8)); %>  </td>
            <td><i class="fa fa-inr"></i> <%out.println(rs.getString(10));%></td>
            </tr>
         <%
}}
catch(Exception e)
{
	System.out.println(e);
	
}
%>
        </tbody>
      </table>
      
<hr style="width: 100%">

 <div class="left-div">
 <h3>Enter Address</h3>

 </div>

<div class="right-div">
<h3>Enter city</h3>

</div> 

<div class="left-div">
<h3>Enter State</h3>

</div>

<div class="right-div">
<h3>Enter country</h3>

</div>
<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
 
</div>

<div class="right-div">
<h3>Pay online on this btechdays@pay.com</h3>

<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>

<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
<i class='far fa-arrow-alt-circle-right'></i>
<h3 style="color: red">*Fill form correctly</h3>
</div>


      <br>
      <br>
      <br>

</body>
</html>