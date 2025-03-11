package com.example.baithi.repository;

import com.example.baithi.entity.Product;
import com.example.baithi.repository.imp.IProductRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    @Override
    public List<Product> findAllProduct() {
        List<Product> products = new ArrayList<>();
        try (Statement statement = BaseRepository.getConnection().createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * from product"))
        {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String color = resultSet.getString("color");
                products.add(new Product(id,name,price,quantity,color));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    @Override
    public void reomve(int id) {

    }

    @Override
    public void save(Product product) {
        List<Product> products = new ArrayList<>();
        try(            PreparedStatement statement = BaseRepository.getConnection().prepareStatement
                ("insert into product(name, price, quantily, coler, description) values (?,?,?,?,?)");
        ) {
            statement.setString(1,product.getName());
            statement.setDouble(2,product.getPrice());
            statement.setInt(3,product.getQuantity());
            statement.setString(4,product.getColor());
            statement.setString(5,product.getDescription());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
