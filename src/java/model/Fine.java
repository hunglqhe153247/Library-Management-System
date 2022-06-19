/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class Fine {
    private String fineId;
    private String userId;
    private String amount;
    private String status;
    
    public Fine() {
    }

    public Fine(String fineId, String userId, String amount, String status) {
        this.fineId = fineId;
        this.userId = userId;
        this.amount = amount;
        this.status = status;
    }

    public String getFineId() {
        return fineId;
    }

    public void setFineId(String fineId) {
        this.fineId = fineId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
