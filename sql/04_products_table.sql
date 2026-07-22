USE ecommerce_sales;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

INSERT INTO products
(product_name, category_id, price, stock_quantity)
VALUES
('iPhone 16',1,79999,30),
('Samsung Galaxy S25',1,74999,40),
('HP Pavilion Laptop',1,58999,25),
('Boat Earbuds',1,1999,200),
('Nike Running Shoes',9,4999,100),
('Levis Jeans',2,2499,120),
('WomensKurti',2,1499,150),
('Office Chair',8,6999,35),
('Study Table',8,8999,20),
('Air Fryer',3,5499,40),
('Mixer Grinder',3,3499,50),
('Face Wash',4,399,180),
('Protein Powder',13,2499,60),
('Cricket Bat',5,2999,70),
('Football',5,999,90),
('Python Programming Book',6,799,120),
('Notebook Pack',12,299,300),
('Dog Food 5kg',15,1499,45),
('Car Vacuum Cleaner',14,1999,30),
('Gold Plated Necklace',11,3499,15);