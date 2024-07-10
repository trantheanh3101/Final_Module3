package com.codegym.exam_final_module3_tta.repositories;

import com.codegym.exam_final_module3_tta.models.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    void save(Product newProduct);

    List<Product> findTopSellingProducts(int topCount);
}
