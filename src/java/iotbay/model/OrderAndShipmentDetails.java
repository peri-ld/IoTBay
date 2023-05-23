/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package iotbay.model;

/**
 *
 * @author nazramahmood
 */
public class OrderAndShipmentDetails extends Order {
    private Integer shipmentId;
    
    public OrderAndShipmentDetails(String OrderID, String ItemID, Integer OrderQuantity, Integer ItemPrice, Integer OrderTotal, String email, Integer shipmentId) {
        super(OrderID, ItemID, OrderQuantity, ItemPrice, OrderTotal, email);
        this.shipmentId = shipmentId;
    }

    /**
     * @return the shipmentId
     */
    public Integer getShipmentId() {
        return shipmentId;
    }

    /**
     * @param shipmentId the shipmentId to set
     */
    public void setShipmentId(Integer shipmentId) {
        this.shipmentId = shipmentId;
    }
}
