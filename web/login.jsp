<%-- 
    Document   : login
    Created on : 27/04/2023, 11:35:47 AM
    Author     : peril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel = "stylesheet" href = "style.css">
    
    
</head>

<body class="login" bgcolor= #cceeff>
  <img id="logo-button" src="Photos/IoTBayLogo.png" alt="Logo" style=" width: 80px; float:left; " onclick="window.location.href = 'index.jsp';" >
    <div class= "login-wrapper">
      
      <h2>Login</h2>
      <form method="get" action="main.jsp" id="login-form">
        <input type= "text" name="userName" placeholder="email">
        <input type= "text" name="password" name="userPassword" placeholder="password">
        <label for= "remember-check">
            <input type = "checkbox" id="remember-check"> remember me 

          
    
        
        </label>
      <!-- onclick = "window.location.href = 'main.html' (From line below) -->
            <input type = "submit" value = "Login" "window.location.href = 'main.html'">  
            <label for="register-account">New to IoTBay?<a href ='register.html'> register</a></label> <br>

            <label for = "forgot password">Forgot Password?<a href = "resetPw.html"> find password</a></label>
      </form>
      
      <br>
      <br>
      <br>
    </div>

    <div class="support-bar">
      <a class="support-link" href="support.jsp">Need help? Contact Support</a>
  </div>
    
  
  
</body>
</html>
