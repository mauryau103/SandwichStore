<%@page import="com.mysql.cj.x.protobuf.MysqlxPrepare.Execute"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.db.MyConnection"
    import="java.sql.*"
     %>
   <%@ include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/addNewFood.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta charset="ISO-8859-1">
<title>Edit Food Details</title>

</head>
<body>


<%
int id=Integer.parseInt(request.getParameter("id"));
try{
	Connection conn=MyConnection.connect();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from food where foodid='"+id+"'");
	while(rs.next())
	{
		
%>
<main class="regform">
<section>
            <h1>Welcome</h1>
            <h4>Welcome,Please Enter Details to Update food</h4>
            <form  action="editFoodAction.jsp" method="post">
            
           		 <div class="field">
                    
                    <input type="hidden" name="foodid" value="<%=rs.getInt(1) %>" class="input-field"  required>
               	 </div>
               	 
                <div class="field">
                    <label for="name">Enter name of food</label>
                    <input type="text" name="name" value="<%=rs.getString(2) %>" class="input-field"  required>
                </div>
                
                <div class="field">
                    <label for="category">Enter category</label>
                    <input class="input-field" type="text" name="category" value="<%=rs.getString(3) %>" required>
                </div>
                
                <div class="field">
                    <label for="price">Enter Price</label>
                    <input class="input-field" type="text" name="price" value="<%=rs.getInt(4) %>" required>
                </div>
               
               <div class="field">
                    <label for="category">Active</label>
                    <select class="input-field" name="active">
					   <option value="Yes">Yes</option>
					   <option value="No">No</option>
					</select>
                </div>
                
                <div class="buttons">
                    <input type="submit" value="Save" class="cta sign-in">
                     <input type="hidden" name="act" value="addNewFoodAction">
                </div>
                
            </form>
        </section>
      </main>
      
     <%
	} 
	}
catch(Exception e){
	System.out.println(e);
}
     
     %>
</body>
</html>