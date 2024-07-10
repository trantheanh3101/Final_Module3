package com.codegym.exam_final_module3_tta.repositories.impl;

import com.codegym.exam_final_module3_tta.models.Product;
import com.codegym.exam_final_module3_tta.repositories.IProductRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> products;

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection().
                    prepareStatement("SELECT * FROM Products");
            ResultSet resultSet = preparedStatement.executeQuery();
            int id;
            String name;
            double price;
            double discount;
            int stockQuantity;
            while (resultSet.next()){
                id = resultSet.getInt("id");
                name = resultSet.getString("name");
                price = resultSet.getDouble("price");
                discount = resultSet.getDouble("discount");
                stockQuantity = resultSet.getInt("stock_quantity");
                Product product = new Product(id, name, price, discount, stockQuantity);
                products.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    @Override
    public void save(Product newProduct) {
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection().
                    prepareStatement("insert into products(name, price, discount, stock_quantity) value (?,?,?,?)");
            preparedStatement.setString(1, newProduct.getName());
            preparedStatement.setDouble(2, newProduct.getPrice());
            preparedStatement.setDouble(3, newProduct.getDiscount());
            preparedStatement.setInt(4, newProduct.getStockQuantity());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Product> findTopSellingProducts(int topCount) {
        List<Product> topProducts = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("SELECT p.id, p.name, p.price, p.discount, p.stock_quantity, COUNT(od.order_id) AS total_orders " +
                            "FROM products p " +
                            "JOIN order_details od ON p.id = od.product_id " +
                            "GROUP BY p.id " +
                            "ORDER BY total_orders DESC " +
                            "LIMIT ?");
            preparedStatement.setInt(1, topCount);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                double discount = resultSet.getDouble("discount");
                int stockQuantity = resultSet.getInt("stock_quantity");
                Product product = new Product(id, name, price, discount, stockQuantity);
                topProducts.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return topProducts;
    }
}
