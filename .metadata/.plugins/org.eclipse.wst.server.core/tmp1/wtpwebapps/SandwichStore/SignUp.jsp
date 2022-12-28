<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <link rel="stylesheet" href="css/SignUp.css">
</head>
<body>
    <main>
        <section>
            <h1>Welcome</h1>
            <h4>Welcome , Please enter your details to register</h4>
            <form action="UserServlet" method="post" onsubmit="return validateForm()" novalidate>
                <div class="field">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="fname" class="input-field" placeholder="Enter your name" onblur="validate1()" required>
                    <small><span id="error1"></span></small>
                </div>
                <div class="field">
                    <label for="username">UserName</label>
                    <input type="text" name="username" id="uname" class="input-field" placeholder="Enter your Username" onblur="validate2()" required>
                    <small><span id="error2"></span></small>
                </div>
                <div class="field">
                    <label for="mobile">Mobile No</label>
                    <input type="tel" name="mobile" id="mobile" class="input-field" placeholder="Enter your Mobile Number" pattern="[0-9]{10}" onblur="validate3()" required>
                    <small><span id="error3"></span></small>
                </div>
                <div class="field">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="emailid" class="input-field" placeholder="Enter your email" onblur="validate4()" required>
                   <small> <span id="error4"></span></small>
                </div>
                <div class="field">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="pass" class="input-field" placeholder="Enter your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}" onblur="validate5()" required>
                    <small><span id="error5"></span></small>
                </div>
                <div class="field">
                    <label for="confirm_password">Confirm Password</label>
                    <input type="password" name="confirm_password" id="c_pass" class="input-field" placeholder="********" onblur="validate6 ()" required>
                    <small><span id="error6"></span></small>
                </div>
                <div class="buttons">
                    <input type="submit" value="Resgister" class="cta sign-in">
                     <input type="hidden" name="act" value="registerAction">
                </div>
                <p>
                    Already have an account?
                    <a href="login.jsp">SignIn</a>
                </p>
            </form>
             <script src="Scripts/SignUpValidation.js"></script>
        </section>
        <figure>
            <img src="images/veg.jpg" alt=" happy people">
           
            <div>
             <%
            	String msg=request.getParameter("msg");
                    		if("valid".equals(msg))
                    		{		
            %>
                <p>Successfully Registered</p> 
                <%
                    		}
                %>
                
                 <%
                    		if("invalid".equals(msg))
                    		{		
            %>
                <p>Something went Wrong! Try Again !</p> 
                <%
                    		}
                %>
            </div>
        </figure>
    </main>
</body>
</html>