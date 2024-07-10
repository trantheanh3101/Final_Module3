package com.codegym.exam_final_module3_tta.services;

import com.codegym.exam_final_module3_tta.models.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    void save(Product newProduct);

    List<Product> findTopSellingProducts(int topCount);
}
