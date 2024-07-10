package com.codegym.exam_final_module3_tta.services.impl;

import com.codegym.exam_final_module3_tta.models.Product;
import com.codegym.exam_final_module3_tta.repositories.IProductRepository;
import com.codegym.exam_final_module3_tta.repositories.impl.ProductRepository;
import com.codegym.exam_final_module3_tta.services.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product newProduct) {
        productRepository.save(newProduct);
    }

    @Override
    public List<Product> findTopSellingProducts(int topCount) {
        return productRepository.findTopSellingProducts(topCount);
    }
}
