package com.example.baithi.repository;

import com.example.baithi.entity.Category;

import com.example.baithi.repository.imp.ICategoryRepository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {
    @Override
    public List<Category> findAllCategory() {
        List<Category> categories = new ArrayList<>();
        try(Statement statement = BaseRepository.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * from category");)
        {
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                categories.add(new Category( name));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return categories;
    }
}
