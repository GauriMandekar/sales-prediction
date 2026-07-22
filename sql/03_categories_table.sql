USE ecommerce_sales;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Fashion'),
('Home & Kitchen'),
('Beauty'),
('Sports'),
('Books'),
('Groceries'),
('Furniture'),
('Footwear'),
('Toys'),
('Jewelry'),
('Stationery'),
('Health'),
('Automotive'),
('Pet Supplies');
