package com.example.baithi.service.imp;

import com.example.baithi.entity.Product;

import java.util.List;

public interface IProductService {
    List<Product> getList();

    void remove(int id);

    void save(Product product);
}
