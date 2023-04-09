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
            width: 40%;
            height: 50%;
            background: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            margin: auto;
            margin-top: 30px;
        }
        
    </style>
        <title>Main Page</title>
    </head>
    <body bgcolor= #cceeff>
    <div class="top-bar">
        <img src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;">
        <button class="logout-button" align="right" onclick="window.location.href = 'logout.html';">Log Out</button>
    </div>
        
    <%
        User user = (User)session.getAttribute("user");
    %>
        
    <div class="centre">
        <div><h1>Hi, ${User.firstName} </h1></div>
        <div class="details-box">
            <h2>Your Account:</h2>
            <p><br>First Name: ${User.firstName}</p>
            <p>Last Name: ${User.lastName}</p>
            <p>Email: ${User.email}</p>
            <p>Phone Number: ${User.phone}</p>
            <p>Password: ${User.password}</p>
            <p>Gender: ${User.gender}</p>
        </div>
        <button>Edit</button>
        <button class="browse-button" onclick="window.location.href = 'index.html';">Browse products</button>
    </div>
    </body>
</html>
