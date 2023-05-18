<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Shipment Details</title>
    <style>
        body {background-color:#cceeff;}
        
        </style>
    
</head>
<body>
    <h1>User Shipment Details</h1>

    <form action="process.jsp" method="POST">
        <label for="orderId">Order ID:</label>
        <input type="text" id="orderId" name="orderId" required><br><br>

        <label for="shipmentMethod">Preferred Shipment Method:</label>
        <select id="shipmentMethod" name="shipmentMethod">
            <option value="standard">Standard</option>
            <option value="express">Express</option>
        </select><br><br>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" cols="30" required></textarea><br><br>

        <label for="shipmentDate">Shipment Date:</label>
        <input type="date" id="shipmentDate" name="shipmentDate" required><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
