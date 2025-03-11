package com.example.baithi.controller;

import com.example.baithi.entity.Category;
import com.example.baithi.entity.Product;
import com.example.baithi.service.CategoryService;
import com.example.baithi.service.ProductService;
import com.example.baithi.service.imp.ICategoryService;
import com.example.baithi.service.imp.IProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/product")
public class ProductController extends HttpServlet {
    private final IProductService productService = new ProductService();
    private final ICategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                List<Product> products = new ArrayList<>();
                req.setAttribute("products",products);
                req.getRequestDispatcher("/WEB-INF/view/create.jsp").forward(req, resp);
                break;
            default:
                productList(req, resp);
        }
    }

    private void productList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.getList();
        req.setAttribute("products", products);
        List<Category> categories = categoryService.getList();
        req.setAttribute("categories",categories);
        req.getRequestDispatcher("/WEB-INF/view/product.jsp").forward(req, resp);
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
                int quantity = Integer.parseInt(req.getParameter("quantity"));
                String color = req.getParameter("color");
                String description = req.getParameter("description");
                Product product = new Product(name,price,quantity,color,description);
                productService.save(product);
                resp.sendRedirect("/product");
                break;
        }
    }
}
