package iotbay.model.dao;

import iotbay.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.lang.String;

public class DBManager {
    
    private Statement st;
    
    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
   
    //Find user by email and password in the database   
public User findUser(String email, String password) throws SQLException {       
   String fetch = "Select * from IoTBay-User.USERS where EMAIL = '" + email + "' and PASSWORD= '" + password + "'";
   ResultSet rs = st.executeQuery(fetch);
   
   while (rs.next()) {
       String userEMAIL = rs.getString(4);
       String userPASSWORD = rs.getString(6);
       if (userEmail.equals(email) && userPassword.equals(password)) {
           String userFIRSTNAME = rs.getString(2);
           String userLASTNAME = rs.getString(3);
           String userPHONE = rs.getString(5);
           return new User(userFIRSTNAME, userLASTNAME, userEMAIL, userPHONE, USERpassword);
           
       }
   }
   return null;   
}

//Add a user-data into the database   
public void addUser(String email, String name, String password, String gender, String favcol) throws SQLException {   
  st.executeUpdate("sql query");   

}

//update a user details in the database   
public void updateUser( String email, String name, String password, String gender, String favcol) throws SQLException {       
 

}       

//delete a user from the database   
public void deleteUser(String email) throws SQLException{       

}


 

}


