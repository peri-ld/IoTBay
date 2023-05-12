package iotbay.model.dao;

import com.sun.xml.registry.uddi.bindings_v2_2.Phone;
import iotbay.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.lang.String;
import java.util.ArrayList;
import sun.security.util.Password;

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
       String userEMAIL = rs.getString(3);
       String userPASSWORD = rs.getString(5);
       if (userEMAIL.equals(email) && userPASSWORD.equals(password)) {
           String userFIRSTNAME = rs.getString(1);
           String userLASTNAME = rs.getString(2);
           String userPHONE = rs.getString(4);
           String userTYPE = rs.getString(6);
           String userGENDER = rs.getString(7);
           return new User(userFIRSTNAME, userLASTNAME, userEMAIL, userPHONE, userPASSWORD, userTYPE, userGENDER);
           
       }
   }
   return null;   
}

//Add a user-data into the database   
public void addUser(String firstName, String lastName, String email, String phone, String password, String userType, String gender ) throws SQLException {   
  st.executeUpdate("INSERT INTO IoTBay-User.USERS " + "VALUES ('" + firstName + "', '" + lastName + "', '" + email + "', '" + phone +  "', '" + password + "', '" + userType + "' , '" + gender + "')");   

}

//update a user details in the database   
public void updateUser(String firstName, String lastName, String email, String phone, String password, String userType, String gender ) throws SQLException {       
  st.executeUpdate("UPDATE IoTBay-User.USERS SET firstName='" + firstName + "', lastName='" + lastName + "', email='" + email + "', phone='" + phone +  "', password'" + password + "', userType='" + userType + "' , gender='" + gender + "'");   
}       

//delete a user from the database   
public void deleteUser(String email) throws SQLException{
    st.executeUpdate("DELETE FROM IoTBay-User.USERS WHERE EMAIL='" + email + "'");

}
public ArrayList<User> fectUsers() throws SQLException {
    String fetch = "select * from USERS";
    ResultSet rs = st.executeQuery(fetch);
    ArrayList<User> temp = new ArrayList();
    
    while (rs.next()) {
        String firstName = rs.getString(1);
        String lastName = rs.getString(2);
        String email = rs.getString(3);
        String phone = rs.getString(4);
        String password = rs.getString(5);
        String userType = rs.getString(6);
        String gender = rs.getString(7);
        temp.add(new User(firstName, lastName, email, phone, password, userType, gender));
    }
    return temp;
}

 

}


