<%@page import="java.sql.Statement"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.awt.Taskbar.State"%>
<%@page import="com.db.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%
String username=session.getAttribute("username").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{
	
	Connection conn=MyConnection.connect();
	Statement st=conn.createStatement();
	ResultSet rs= st.executeQuery("select * from cart where username='"+username+"' and food_id='"+id+"' and address is NULL");
	while(rs.next())
	{
		price=rs.getInt(4);
		total = rs.getInt(5);
		quantity=rs.getInt(3);
		
	}
	if(quantity==1 && incdec.equals("dec")){
		response.sendRedirect("MyCart.jsp?msg=notPossible");
	}
	else if(quantity!=1 && incdec.equals("dec")){
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where username='"+username+"' and food_id='"+id+"' and address is NULL");
		response.sendRedirect("MyCart.jsp?msg=dec");
	}
	else{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where username='"+username+"' and food_id='"+id+"' and address is NULL");
		response.sendRedirect("MyCart.jsp?msg=inc");
	}
}catch(Exception e){
	System.out.println(e);
}
%>