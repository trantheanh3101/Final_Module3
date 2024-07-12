package com.codegym.exam_final_module3_tta.models;

public class Product {
    private int id;
    private String name;
    private double price;
    private double discount;
    private int stockQuantity;
    private double totalSales; // Thêm trường totalSales

    public Product(int id, String name, double price, double discount, int stockQuantity, double totalSales) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.stockQuantity = stockQuantity;
        this.totalSales = totalSales;
    }

    public Product() {}

    public Product(String name, double price, double discount, int stockQuantity) {
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.stockQuantity = stockQuantity;
    }

    public Product(int id, String name, double price, double discount, int stockQuantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.stockQuantity = stockQuantity;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }
}

