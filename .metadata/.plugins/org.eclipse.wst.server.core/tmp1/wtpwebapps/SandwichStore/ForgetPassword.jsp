<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password Page</title>
    <link rel="stylesheet" href="css/ForgetPassword.css">
</head>
<body>
    <main>
        <section>
            <h1>Forget Password</h1>
            <h4>Lets change Your Password.</h4>
            <form  action="UserServlet" method="post">
           		<div class="field">
                    <label for="email">Enter Email</label>
                    <input type="text" name="email" class="input-field" placeholder="Enter your email">
                </div>	
                <div class="field">
                    <label for="username">Enter Username</label>
                    <input type="text" name="username" class="input-field" placeholder="Enter your username">
                </div>
                <div class="field">
                    <label for="password">Enter New Password</label>
                    <input type="password" name="password" class="input-field" placeholder="********">
                </div>
                <div class="buttons">
                    <input type="submit" value="Change Password" class="cta sign-in">
                    <input type="hidden" name="act" value="changePasswordAction">
                    <button class="cta google">
                        <img src="images/google.jpeg" class="google-icon" alt="google icon">
                        Sign in with Google 
                    </button>
                </div>
                <p>
                    Don't have an account?
                    <a href="SignUp.jsp">Signup for free</a>
                </p>
            </form>
        </section>
        <figure>
            <img src="images/veg.jpg" alt="sand whiches">
            <div>
            <%
            	String msg=request.getParameter("msg");
                 
             if("done".equals(msg)){
            %>
                <p>Password change successfully!</p>
                <%
                    		 }
                %>
               
                <%
                   if("invalid".equals(msg)){
            	%>
                <p>Something went wrong Try again.!</p>
                <%
                    		 }
                %>
                
                ${msg}
            </div>
        </figure>
    </main>
</body>
</html>