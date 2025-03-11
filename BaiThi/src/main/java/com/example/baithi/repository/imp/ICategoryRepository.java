package com.example.baithi.repository.imp;

import com.example.baithi.entity.Category;

import java.util.List;

public interface ICategoryRepository {
    List<Category> findAllCategory();
}
