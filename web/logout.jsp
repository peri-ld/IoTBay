<%-- 
    Document   : logout
    Created on : 05/05/2023, 2:14:45 PM
    Author     : peril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--will have to do something in backend that sets login to logged out-->

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
    <img src="Photos/IoTBayLogo.png" alt="Logo" style="width:200px;">
    <div class="centre">
    <h1>You have been logged out.</h1> <!--Add name from beans data?-->
        <button onclick="window.location.href = 'index.html';">Proceed back to the home page</button> <!--when I say home page I mean index.html-->
    </div>
</body>
</html>
