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
public class Payment {
    private int paymentId;
    private int orderId;
    private int deliveryId;
    private String cardNumber;
    private String cardName;
    private String expiration;
    private String securityCode;
    private String discountCode;
    private double discount;
    private double total;
}
