<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <main>
        <section>
            <h1>Welcome back</h1>
            <h4>Welcome back, Please enter your details</h4>
            <form  action="UserServlet" method="post">
                <div class="field">
                    <label for="username">UserName</label>
                    <input type="text" name="username" class="input-field" placeholder="Enter your username">
                </div>
                <div class="field">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="input-field" placeholder="********">
                </div>
                <div class="recover-password">
                    <div>
                        <input type="checkbox" name="" id="">
                        <p>Remember me</p>
                    </div>
                    <a href="ForgetPassword.jsp"><p>forgot Password</p></a>
                </div>
                <div class="buttons">
                    <input type="submit" value="Sign in" class="cta sign-in">
                     <input type="hidden" name="act" value="loginAction">
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
                    		if("notexist".equals(msg)){
            %>
                <p>incorrect username or password</p>
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
            </div>
        </figure>
    </main>
</body>
</html>