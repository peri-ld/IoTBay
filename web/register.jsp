<%-- 
    Document   : register
    Created on : 09/04/2023, 7:42:42 PM
    Author     : peril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body class="register">
        <div class="top-bar">
        <img id="logo-button" src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;" onclick="window.location.href = 'index.html';" >
    </div>
    <div class= "register-container">
        <h2>Registration</h2>
        <form id="form" class="register-form" action="welcome.jsp" method="post"> <!--don't want to use get for passwords its not safe // No worries :) JM-->
            <div class="user-details">
                <div class="input-box">
                    <span class="details">First Name</span>
                    <input name="firstName" type="text" placeholder="Enter your first name" required>
                </div>
                <div class="input-box">
                    <span class="details">Last Name</span>
                    <input name="lastName" type="text" placeholder="Enter your last name" required>
                </div>
                <div class="input-box">
                    <span class="details">Email </span>
                    <input name="email" type="email" placeholder="Enter your email address" maxlength = "40" class="check" required>
                        <span class = "emailInt" id = "emailBox">
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input name="password" type="password" placeholder="Enter your password" required>
                </div>
                <div class="input-box">
                    <span class="details">Confirm Password</span>
                    <input type="password" placeholder="Re-enter your password" required>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input name="phone" type="number" placeholder="Enter your mobile number" min="0400000000" max="0499999999" maxlength="10" required>
                </div>
            </div>
                <div class="gender-details">
                    <input type="radio" name="male" id="dot-male" required >
                    <input type="radio" name="female" id="dot-female" required >
                    <span class="gender-title">Gender</span>
                    <div class="category">
                        <label for="dot-male">
                            <span class="dot one"></span>
                            <span class="gender">Male</span>
                        </label>
                        <label for="dot-female">
                            <span class="dot two"></span>
                            <span class="gender">Female</span>
                        </label>
                    </div>
                </div>
            <div class="register-button">
                <button id="register-button" type ="submit" href="welcome.jsp">Register</button>
            </div>
            <a href="index.jsp" style="color:Tomato;">Cancel</a>
    </form>
</div>
    </body>
</html>
