<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"
     %>
<%
int id=Integer.parseInt(request.getParameter("foodid"));
String name=request.getParameter("name");
String category=request.getParameter("category");
int price=Integer.parseInt(request.getParameter("price"));
String active=request.getParameter("active");


try{
	Connection conn=MyConnection.connect();
	Statement st=conn.createStatement();
	st.executeUpdate("update food set foodname='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where foodid='"+id+"'");
	if(active.equals("No")){
		st.executeUpdate("delete from cart where food_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allFoodEditFood.jsp?msg=done");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allFoodEditFood.jsp?msg=wrong");
}
%>