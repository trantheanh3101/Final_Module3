package com.codegym.exam_final_module3_tta.models;

import java.util.Date;

public class Employee {
    private int id;
    private String name;
    private Date dateOfBirth;
    private String address;

    public Employee() {}

    public Employee(String name, Date dateOfBirth, String address) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}

