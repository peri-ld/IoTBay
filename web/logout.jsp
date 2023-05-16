<%-- 
    Document   : logout
    Created on : 11/05/2023, 9:51:25 PM
    Author     : peril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter&display=swap');
        .centre {
            font-family: 'Inter', sans-serif;
            vertical-align: center;
            text-align: center;
        }

        h1 {
            height: 80px;
            color: #00498c;
        }

        button {
            background-color: #00498c;
            font-family: 'Inter', sans-serif;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        
    </style>
    <!-- <link rel="stylesheet" href="style.css"> -->
</head>
<body bgcolor= #cceeff>
    <img src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;" onclick="window.location.href = 'index.jsp';">
    <div class="centre">
    <h1>You have been logged out.</h1>
    <% session.invalidate(); %>
        <button onclick="window.location.href = 'index.jsp';">Proceed back to the home page</button>
    </div>
</body>
</html>
