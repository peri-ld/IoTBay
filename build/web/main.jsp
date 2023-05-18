<%-- 
    Document   : main
    Created on : 09/04/2023, 10:50:16 PM
    Author     : peril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="iotbay.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter&display=swap');
        .centre {
            font-family: 'Inter', sans-serif;
            vertical-align: center;
            text-align: center;
        }

        h1, h2 {
            height: 80px;
            color: #00498c;
            display: inline;
        }

        p {
            text-align: left;
            padding: 10px;
        }

        button {
            background-color: #00498c;
            font-family: 'Inter', sans-serif;
            border: none;
            color: white;
            padding: 15px 32px; 
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
            vertical-align: center;
        }

        .top-bar {
            display: inline-block;
            max-width: 1140px;
            margin-right: 8px;
        }

        .logout-button {
            position: absolute;
            top: 8px;
            right: 16px;
        }

        .browse-button {
            margin: 30px 2px;
        }

        .details-box {
            max-width: 700px;
            width: 100%;
            height: 20%;
            background: #fff;
            padding: 25px 30px;
            padding-top: 10px;
            border-radius: 5px;
            margin: auto;
            margin-top: 30px;
            text-align: center;
        }
        
        .support-bar {
            background-color: #00498c;
            color: white;
            font-family: 'Inter', sans-serif;
            text-align: center;
            padding: 10px;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
        }
        
        th, td {
            padding: 10px;
            text-align: center;
        }
        
        thead {
            background-color: #f2f2f2;
        }
        
        .support-bar {
        background-color: #00498c;
        color: white;
        font-family: 'Inter', sans-serif;
        text-align: center;
        padding: 10px;
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;}

        .support-link {
         color: white;
         text-decoration: none;}
        
    </style>
        <title>Main Page</title>
    </head>
    <body bgcolor= #cceeffonload="startTime()">
        <div><span  class=time" id="time"></span></div>
    <div class="top-bar">
        <img src="Photos/IoTBayLogo.png" alt="Logo" style="width:140px;">
        <button class="logout-button" align="right" onclick="window.location.href = 'logout.jsp';">Log Out</button>
    </div>
        
    <%
        User user = (User)session.getAttribute("user");
    %>
        
    <div class="centre">
        <div><h1>Welcome back, ${user.firstName} </h1></div>
        <div class="details-box">
            <h3>Your Account Details</h3>
            <table class="user-info">
                <thead><th>First Name</th><th>Last Name</th><th>Email</th><th>Password</th><th>Phone</th><th>Gender</th></thead> 
                   <tr><td>${user.firstName}</td><td>${user.lastName}</td><td>${user.email}</td><td>${user.password}</td><td>${user.phone}</td><td>${user.gender}</td></tr>
            </table>
        </div>
        <button onclick="window.location.href = 'edit.jsp';">Edit</button>
        <button class="browse-button" onclick="window.location.href = 'index.jsp';">Browse products</button>
    </div>
        <br>
        <br>
    <div class="support-bar">
        <a class="support-bar" href="support.jsp">Need help? Contact Support</a>
    </div>
    <jsp:include page="/LoginServlet" flush="true"/>
    </body>
</html>
