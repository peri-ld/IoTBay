/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iotbay.model;
/**
 *
 * @author peril
 */
public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String password;
    private String userType;
    private String gender;
    private Order userOrder;

    public User(String firstName, String lastName, String email, String phone, String password, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.userType = "customer";
        this.gender = gender;
    }
    
    public User(String firstName, String lastName, String email, String phone, String password, String usertype, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.userType = usertype;
        this.gender = gender;
    }

    public Order getUserOrder() {
        return userOrder;
    }

    public void setUserOrder(Order userOrder) {
        this.userOrder = userOrder;
    }
   // Could You Update this if required for a userType field (User doesn't define it themselves, should default to 'customer'
    public String getUserType() {
        return userType;
    }

    public void setUserType(String userID) {
        this.userType = userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
