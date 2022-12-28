<%@page import="java.sql.Statement"%>
<%@page import="com.db.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%

String username=session.getAttribute("username").toString();
String food_id=request.getParameter("id");
try{
	Connection conn = MyConnection.connect();
	Statement st=conn.createStatement();
	st.executeUpdate("delete from cart where username='"+username+"' and food_id='"+food_id+"' and address is NULL");
	response.sendRedirect("MyCart.jsp?msg=removed");
}catch(Exception e){
	System.out.println(e);
}
%>