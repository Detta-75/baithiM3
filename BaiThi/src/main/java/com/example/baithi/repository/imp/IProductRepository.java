package com.example.baithi.repository.imp;

import com.example.baithi.entity.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAllProduct();

    void reomve(int id);

    void save(Product product);
}
