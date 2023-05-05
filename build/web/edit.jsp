<%-- 
    Document   : edit
    Created on : 05/05/2023, 12:19:22 PM
    Author     : james
--%>

<%@page import="iotbay.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
            %>
        <h1>Edit User Information</h1>
         <form action="edit.jsp" method="post">
                <div class="user-details">
                    <table style="width:100%">
                        <tr><td>First Name </td><td>Last Name</td></tr>
                        <tr><td class="input-box"><input name="firstName" type="text" value="${user.firstName}" ></td>
                        <td class="input-box"><input name="lastName" type="text"value="${user.lastName}" ></td></tr>

                        <tr><td>Email</td><td>Phone Number</td></tr>
                        <tr><td class="input-box"><input name="email" type="email" value="${user.email}" ></td>
                        <td class="input-box"><input name="phone" type="number" value="${user.phone}" ></td></tr>


                    </table>
                    
                    
                    <div class="bottom-buttons">
                        <input type="submit" id="update-button" value="Update">
                        <a href="index.jsp">Cancel</a>
                    </div>
                </div>
            </form>
                        <%
                            String firstName = request.getParameter("firstName");
                            String lastName = request.getParameter("lastName");
                            String email = request.getParameter("email");
                            String phone = request.getParameter("phone");
                            String gender = request.getParameter("gender");
                            String password = request.getParameter("password");
                            user = new User(firstName,lastName,email,phone,gender,password);
                            %>
    </body>
</html>
