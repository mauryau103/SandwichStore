<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"%>
<%@ include file="UserHeader.jsp"%>

<%
String user=session.getAttribute("username").toString();
int food_id=Integer.parseInt(request.getParameter("id"));

int quantity=1;
int food_price=0;
int food_total=0;
int cart_total=0;

int z=0;

try{
	Connection conn=MyConnection.connect();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from food where foodid='"+food_id+"'");
	while(rs.next()){
		food_price=rs.getInt(4);
		food_total=food_price;
		
	}
	ResultSet rs1=st.executeQuery("select * from cart where food_id='"+food_id+"'and username='"+user+"' and address is NULL");
	while(rs1.next()){
		cart_total=rs1.getInt(5);
		cart_total=cart_total+food_total;
		quantity=rs1.getInt(3);
		quantity=quantity+1;
		z=1;
	}
	if(z==1){
		st.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where food_id='"+food_id+"' and username='"+user+"' and address is NULL");
		response.sendRedirect("UserHome.jsp?msg=exist");
	}
	if(z==0){
		PreparedStatement ps=conn.prepareStatement("insert into cart(username,food_id,quantity,price,total) values(?,?,?,?,?)");
		ps.setString(1,user);
		ps.setInt(2,food_id);
		ps.setInt(3,quantity);
		ps.setInt(4,food_price);
		ps.setInt(5,food_total);
		ps.executeUpdate();
		response.sendRedirect("UserHome.jsp?msg=added");
	
	}
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("UserHome.jsp?msg=invalid");
}

%>