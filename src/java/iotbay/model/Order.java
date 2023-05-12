/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package iotbay.model;

/**
 *
 * @author aaron
 */
public class Order {
    private String OrderID;
    private String ItemID;
    private Integer OrderQuantity;
    private Integer ItemPrice;
    private Integer OrderTotal;

    public Order(String OrderID, String ItemID, Integer OrderQuantity, Integer ItemPrice, Integer OrderTotal) {
        this.OrderID = OrderID;
        this.ItemID = ItemID;
        this.OrderQuantity = OrderQuantity;
        this.ItemPrice = ItemPrice;
        this.OrderTotal = OrderTotal;
    }

    public String getOrderID() {
        return OrderID;
    }

    public String getItemID() {
        return ItemID;
    }

    public Integer getOrderQuantity() {
        return OrderQuantity;
    }

    public Integer getItemPrice() {
        return ItemPrice;
    }

    public Integer getOrderTotal() {
        return OrderTotal;
    }

    public void setOrderID(String OrderID) {
        this.OrderID = OrderID;
    }

    public void setItemID(String ItemID) {
        this.ItemID = ItemID;
    }

    public void setOrderQuantity(Integer OrderQuantity) {
        this.OrderQuantity = OrderQuantity;
    }

    public void setItemPrice(Integer ItemPrice) {
        this.ItemPrice = ItemPrice;
    }

    public void setOrderTotal(Integer OrderTotal) {
        this.OrderTotal = OrderTotal;
    }
    
}
