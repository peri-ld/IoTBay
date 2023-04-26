<%-- 
    Document   : main
    Created on : 09/04/2023, 8:10:06 PM
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
        <title>Welcome Page</title>
    </head>
    <body bgcolor= #cceeff>
        <%
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");
        %>
        <%
            User user = new User(firstName, lastName, email, phone, gender, password);
            session.setAttribute("user", user);
        %>

    <div class="top-bar">
        <img src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;">
        <button class="logout-button" align="right" onclick="window.location.href = 'logout.html';">Log Out</button>
    </div>
    <div class="centre">
        <div><h1>Welcome to IoT Bay, <%=firstName%>! </h1></div>
        <div class="details-box">
            <h2>Your Details:</h2>
            <p><br>First Name: <%=firstName%></p>
            <p>Last Name: <%=lastName%></p>
            <p>Email: <%=email%></p>
            <p>Phone Number: <%=phone%></p>
            <p>Password: <%=password%></p>
            <p>Gender: <%=gender%></p>
        </div>
        <button class="browse-button" onclick="window.location.href = 'index.jsp';">Browse products</button>
        <button onclick="window.location.href = 'main.jsp';">Main Page</button>
    </div>
        
    </body>
</html>
