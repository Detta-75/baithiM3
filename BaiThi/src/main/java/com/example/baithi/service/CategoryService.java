package com.example.baithi.service;

import com.example.baithi.entity.Category;
import com.example.baithi.repository.CategoryRepository;
import com.example.baithi.service.imp.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {
    private final CategoryRepository categoryRepository = new CategoryRepository();

    @Override
    public List<Category> getList() {
        return categoryRepository.findAllCategory();
    }
}
