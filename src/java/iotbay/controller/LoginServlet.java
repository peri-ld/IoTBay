package iotbay.controller;

  import java.io.IOException;
  import java.sql.SQLException;
     import java.util.logging.Level;
     import java.util.logging.Logger;
     import javax.servlet.ServletException;
     import javax.servlet.http.HttpServlet;
     import javax.servlet.http.HttpServletRequest;
     import javax.servlet.http.HttpServletResponse;
     import javax.servlet.http.HttpSession;
     import iotbay.model.User;
     import iotbay.model.dao.DBManager;

 
     public class LoginServlet extends HttpServlet {
   
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {
            System.out.println("We made it");
            HttpSession session = request.getSession(); // retrieving current session
            Validator validator = new Validator(); // Creating an instance from the validator java class
            String email = request.getParameter("email"); // Capturing the posted email
            String password = request.getParameter("password"); // Caputring the posted password
            DBManager manager = (DBManager) session.getAttribute("manager"); // Retrieving the manager instance from session
            User user = null; 
            validator.clear(session);
            System.out.println("test");

             
            
            if (!validator.validateEmail(email)) {
                session.setAttribute("emailErr", "Error: Email format incorrect");
                request.getRequestDispatcher("login.jsp").include(request, response);   
            } else if (!validator.validatePassword(password)) {
               session.setAttribute("passErr", "Error: Password format incorrect"); //incorrect password error
               request.getRequestDispatcher("login.jsp").include(request, response);   //redirected back to login page               
            } else {
                    try {
                    user = manager.findUser(email, password);
                    if (user != null) {
                    session.setAttribute("user", user);
                    request.getRequestDispatcher("main.jsp").include(request, response);
                    } else {
                    session.setAttribute("existErr", "User does not exist in the Database!"); //user does not exist error message
                    request.getRequestDispatcher("login.jsp").include(request, response);  //redirected back to login session
                    }
                    } catch (SQLException | NullPointerException ex) {
                        System.out.println(ex.getMessage() == null ? "User does not exist" : "Welcome");
                    }

            }
     }
 }