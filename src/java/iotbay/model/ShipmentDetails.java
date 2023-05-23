/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package iotbay.model;

/**
 *
 * @author nazramahmood
 */
public class ShipmentDetails {
    // PrimaryKey should be orderId since each other can only have one or no 
    // shipment details and vice versa, shipment details specifically apply to
    // individual orders
    private String orderId;
    private Integer shipmentId; 
    private Integer preferredMethod;
    private String address;

    public ShipmentDetails(String orderId, Integer shipmentId, Integer preferredMethod, String address) {
        this.shipmentId = shipmentId;
        this.orderId = orderId;
        this.preferredMethod = preferredMethod;
        this.address = address;
    }
    
    public ShipmentDetails(String orderId) {
        this.orderId = orderId;
        this.shipmentId = 0;
        this.preferredMethod = 0;
        this.address = "";
    }
    
    /**
     * @return the shipmentId
     */
    public int getShipmentId() {
        return shipmentId;
    }

    /**
     * @param shipmentId the shipmentId to set
     */
    public void setShipmentId(int shipmentId) {
        this.shipmentId = shipmentId;
    }

    /**
     * @return the orderId
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the preferredMethod
     */
    public int getPreferredMethod() {
        return preferredMethod;
    }

    /**
     * @param preferredMethod the preferredMethod to set
     */
    public void setPreferredMethod(int preferredMethod) {
        this.preferredMethod = preferredMethod;
    }
    
    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }
}


