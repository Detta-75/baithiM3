use quanlythongtinsanpham;

CREATE TABLE Category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(15,2) NOT NULL CHECK (price > 10000000),
    quantity INT NOT NULL CHECK (quantity > 0),
    color ENUM('Đỏ', 'Xanh', 'Đen', 'Trắng', 'Vàng') NOT NULL,
    description TEXT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(id) ON DELETE SET NULL
);

INSERT INTO Category (name) VALUES ('Điện thoại'), ('Laptop'), ('Máy tính bảng'), ('Phụ kiện'), ('Màn hình');

INSERT INTO Product (name, price, quantity, color, description, category_id) 
VALUES ('iPhone 15', 25000000, 10, 'Đen', 'Điện thoại cao cấp của Apple', 1),
       ('MacBook Air M2', 32000000, 5, 'Đỏ', 'Laptop hiệu suất cao của Apple', 2),
       ('Samsung Galaxy Tab S9', 18000000, 8, 'Trắng', 'Máy tính bảng mạnh mẽ của Samsung', 3),
       ('Dell XPS 15', 35000000, 7, 'Đen', 'Laptop hiệu suất cao của Dell', 2),
       ('Asus ROG Phone 7', 21000000, 12, 'Đỏ', 'Điện thoại chơi game mạnh mẽ', 1),
       ('Sony WH-1000XM5', 12000000, 15, 'Đen', 'Tai nghe chống ồn cao cấp', 4),
       ('LG UltraFine 5K', 28000000, 4, 'Đen', 'Màn hình 5K chất lượng cao', 5),
       ('Samsung Odyssey G9', 30000000, 6, 'Trắng', 'Màn hình cong siêu rộng', 5),
       ('Lenovo ThinkPad X1 Carbon', 27000000, 9, 'Đen', 'Laptop doanh nhân cao cấp', 2),
       ('iPad Pro 12.9', 26000000, 11, 'Vàng', 'Máy tính bảng mạnh mẽ của Apple', 3);