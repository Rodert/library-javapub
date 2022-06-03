package com.example.library.model;

import java.util.Date;

public class Borrow {
    private int id;
    private String borrower;
    private String borrowtime;
    private String bookname;
    private int bid;

    public Borrow() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBorrower() {
        return borrower;
    }

    public void setBorrower(String borrower) {
        this.borrower = borrower;
    }

    public String getBorrowtime() {
        return borrowtime;
    }

    public void setBorrowtime(String borrowtime) {
        this.borrowtime = borrowtime;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    @Override
    public String toString() {
        return "Borrow{" +
                "id=" + id +
                ", borrower='" + borrower + '\'' +
                ", borrowtime='" + borrowtime + '\'' +
                ", bookname='" + bookname + '\'' +
                ", bid=" + bid +
                '}';
    }
}
