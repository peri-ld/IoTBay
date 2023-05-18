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

<body class="login" bgcolor= #cceeff onload="startTime()">
    <div/><span  class=time" id="time"></span>
    <%
        String existErr = (String) session.getAttribute("existErr");
        String emailErr = (String) session.getAttribute("emailErr");
        String passErr = (String) session.getAttribute("passErr");
     %>
  <img id="logo-button" src="Photos/IoTBayLogo.png" alt="Logo" style=" width: 80px; float:left; " onclick="window.location.href = 'index.jsp';" >
    <div class= "login-wrapper">
      
        <h2>Login <span class="message"> <%=(existErr != null ? existErr : "")%></span></h2>
      <form action="LoginServlet" method="post" id="login-form">
        <input type= "text" placeholder="<%=(emailErr != null ? emailErr : "Enter email")%>" name="email" required>  <!-- Works for error, may need a better UI design -->
        <input type= "text" placeholder="<%=(passErr != null ? passErr : "Enter password")%>" name="password" required>
        <label for= "remember-check">
            <input type = "checkbox" id="remember-check"> remember me 

        </label>
      <!-- onclick = "window.location.href = 'main.html' (From line below) -->
      <input type = "submit" value = "Login" ><br>
      <a href="CancelServlet" class="button"> Cancel</a><br>                            <!-- Cancel button (needs work) !-->
            <label for="register-account">New to IoTBay?<a href ='register.html'> register</a></label> <br>

            <label for = "forgot password">Forgot Password?<a href = "resetPw.html"> find password</a></label>
      </form>
      
      <br>
      <br>
      <br>
    </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
    <div class="support-bar">
      <a class="support-link" href="support.jsp">Need help? Contact Support</a>
  </div>
    
  
  
</body>
</html>
