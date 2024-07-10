package com.codegym.exam_final_module3_tta.controllers;

import com.codegym.exam_final_module3_tta.models.Product;
import com.codegym.exam_final_module3_tta.services.IProductService;
import com.codegym.exam_final_module3_tta.services.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value = "/product")
public class ProductController extends HttpServlet {
    private static IProductService productService = new ProductService();



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                List<Product> products = productService.findAll();
                req.setAttribute("products",products);
                req.getRequestDispatcher("/product/create-product.jsp").forward(req, resp);
                break;
            case "top":
                int topCount = Integer.parseInt(req.getParameter("topCount"));
                List<Product> topProducts = productService.findTopSellingProducts(topCount);
                req.setAttribute("topProducts", topProducts);
                req.getRequestDispatcher("/product/top-products.jsp").forward(req, resp);
                break;
            default:
                List<Product> productsAll = productService.findAll();
                req.setAttribute("products", productsAll);
                req.getRequestDispatcher("/product/product-list.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
            switch (action) {
                case "create":
                    String name = req.getParameter("name");
                    double price = Double.parseDouble(req.getParameter("price"));
                    double discount = Double.parseDouble(req.getParameter("discount").replace("%", "")); // Xử lý chuỗi "%"
                    int stock = Integer.parseInt(req.getParameter("stock"));

                    // Kiểm tra các điều kiện
                    if (name.isEmpty() || price <= 100 || (discount != 5 && discount != 10 && discount != 15 && discount != 20) || stock <= 10) {
                        req.setAttribute("error", "Vui lòng kiểm tra lại thông tin nhập.");
                        req.getRequestDispatcher("/product/create-product.jsp").forward(req, resp);
                        return;
                    }

                    Product newProduct = new Product(name, price, discount, stock);
                    productService.save(newProduct);

                    resp.sendRedirect(req.getContextPath() + "/product");
                    break;
                default:
                    resp.sendRedirect(req.getContextPath() + "/product");
                    break;
            }
    }
}
