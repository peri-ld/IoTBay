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
    // PrimaryKey should be a composite key of the shipmentId and orderId
    private Integer shipmentId; 
    private String orderId;
    private Integer preferredMethod;

    public ShipmentDetails(Integer shipmentId, String orderId, String email, Integer preferredMethod) {
        this.shipmentId = shipmentId;
        this.orderId = orderId;
        this.preferredMethod = preferredMethod;
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
}


