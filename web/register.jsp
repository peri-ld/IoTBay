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
        <img id="logo-button" src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;" onclick="window.location.href = 'index.jsp';" >
        </div>
        
        <div class="register-container">
            <h2>Registration</h2>
            <form action="welcome.jsp" method="post">
                <div class="user-details">
                    <table style="width:100%">
                        <tr><td>First Name</td><td>Last Name</td></tr>
                        <tr><td class="input-box"><input name="firstName" type="text" placeholder="Enter your first name" required></td>
                        <td class="input-box"><input name="lastName" type="text" placeholder="Enter your last name" required></td></tr>

                        <tr><td>Email</td><td>Phone Number</td></tr>
                        <tr><td class="input-box"><input name="email" type="email" placeholder="Enter your email address" class="check" required></td>
                        <td class="input-box"><input name="phone" type="number" placeholder="Enter your mobile number" min="0400000000" max="0499999999" maxlength="10" required></td></tr>

                        <tr><td>Password</td><td>Confirm Password</td></tr>
                        <tr><td class="input-box"><input name="password" type="password" placeholder="Enter your password" required></td>
                        <td class="input-box"><input type="password" placeholder="Re-enter your password" required></td></tr>

                    </table>
                    
                    <h3 class="gender-title">Gender</h3>
                    <div id='gender-details'>
                        <input type="radio" name="gender" value="Male"> Male
                        <input type="radio" name="gender" value="Female"> Female
                    </div>
                    
                    <div class="bottom-buttons">
                        <input type="submit" id="register-button" value="Register">
                        <a href="index.jsp">Cancel</a>
                    </div>
                </div>

                <div class="support-bar">
                    <a class="support-link" href="support.jsp">Need help? Contact Support</a>
                </div>
            </form>
        </div>
    </body>
</html>
