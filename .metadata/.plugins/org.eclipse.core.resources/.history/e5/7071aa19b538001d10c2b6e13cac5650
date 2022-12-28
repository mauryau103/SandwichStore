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
<meta charset="ISO-8859-1">
<title>Add new Food</title>

</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Food Added Successfully!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong!Try Again!</h3>
<%} %>

<%
int id=1;
try{
	Connection conn=MyConnection.connect();
	Statement st = conn.createStatement();
	ResultSet rs=st.executeQuery("select max(foodid) from food");
	
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
		
	}
}
catch(Exception e){
	
}

%>
<main class="regform">
<section>
            <h1>Welcome</h1>
            <h4>Welcome,Please Enter Details to add food</h4>
            <h3 style="color: yellow;">Food ID: <%out.println(id);%> </h3>
            <form  action="addNewFoodAction.jsp" method="post">
            
           		 <div class="field">
                    <label for="foodid">Enter id as mentioned above</label>
                    <input type="text" name="foodid" placeholder="Enter Food Id" class="input-field"  required>
               	 </div>
               	 
                <div class="field">
                    <label for="name">Enter name of food</label>
                    <input type="text" name="name" placeholder="Enter Food Name" class="input-field"  required>
                </div>
                
                <div class="field">
                    <label for="category">Enter category</label>
                    <input class="input-field" type="text" name="category" placeholder="Enter Food Category" required>
                </div>
                
                <div class="field">
                    <label for="price">Enter Price</label>
                    <input class="input-field" type="text" name="price" placeholder="Enter Food Price" required>
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
</body>
</html>