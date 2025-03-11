package com.example.baithi.service;

import com.example.baithi.entity.Product;
import com.example.baithi.repository.ProductRepository;
import com.example.baithi.service.imp.IProductService;

import java.util.List;

public class ProductService implements IProductService {
private final ProductRepository productRepository = new ProductRepository();
    @Override
    public List<Product> getList() {
        return productRepository.findAllProduct();
    }

    @Override
    public void remove(int id) {

    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }
}
