/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author Hung
 */
public class Order {
    int id;
    int accountId;
    int bookId;
    Date reserveDate;

    public Order() {
    }

    public Order(int accountId, int bookId, Date reserveDate) {
        this.accountId = accountId;
        this.bookId = bookId;
        this.reserveDate = reserveDate;
    }

    public Order(int id, int accountId, int bookId, Date reserveDate) {
        this.id = id;
        this.accountId = accountId;
        this.bookId = bookId;
        this.reserveDate = reserveDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public Date getReserveDate() {
        return reserveDate;
    }

    public void setReserveDate(Date reserveDate) {
        this.reserveDate = reserveDate;
    }
    
}
