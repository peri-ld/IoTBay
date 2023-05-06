<%-- 
    Document   : index
    Created on : 09/04/2023, 9:09:29 PM
    Author     : Aaron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="index.css">
        <title>Index page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0", user-scalable="no">
    </head>
    <body>
        <div class="header">
                <div class="inner-header">
                    <div class="logo-container">
                        <img src="Photos/IoTBayLogo.png">
                    </div>
                    <div class="navigation">
                        <div class="index-login-button">
                            <input type="submit" value="Login" onclick = "window.location.href = 'login.html'">
                        </div>
                        <div class="index-register-button">
                            <input type="submit" value="Register" onclick = "window.location.href = 'register.html'">
                            <input type="submit" value="Logout" onclick = "window.location.href = 'logout.html'"> <!--conditional login/logout buttons-->
                        </div>
                      </div>
                </div>
            </div>
            <div class="upperbodycontainer">
                <div class="Landing_Picture">
                    <img src="Photos/IoT-devices.jpg">
                </div>

                <div class="text">
                    <h1>What are IOT devices?</h1>
                    <h3>IoT devices are pieces of hardware, such as sensors, 
                        actuators, gadgets, appliances, or machines that are embedded with sensors, software, and other technologies</h3>
                </div>
            </div>
            <div class="featured-products">
                <span class="featured-product-title"> FEATURED PRODUCTS</span>
            </div>
            <div class="bodycontainer">
                    <div>
                        <img src="Photos/Smart-TV.png" alt="Smart-TV">
                        <p>Smart TV</p>
                    </div>
                    <div>
                        <img src="Photos/Smart-Speaker.png" alt="Smart Speaker">
                        <p>Smart Speaker</p>
                    </div>
                    <div>
                        <img src="Photos/Smart-Lights.png" alt="Smart Lights">
                        <p>Smart Lights</p>
                    </div>
                    <div>
                        <img src="Photos/Smart-Thermostat.png" alt="Smart Thermostat">
                        <p>Smart Thermostat</p>
                    </div>
        </div>
    </body>
</html> 
