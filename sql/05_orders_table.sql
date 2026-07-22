USE ecommerce_sales;
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    payment_method VARCHAR(30),
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date, payment_method, order_status) VALUES
(1,'2025-07-01','UPI','Delivered'),
(2,'2025-07-02','Credit Card','Delivered'),
(3,'2025-07-03','Debit Card','Delivered'),
(4,'2025-07-04','Cash on Delivery','Shipped'),
(5,'2025-07-05','UPI','Delivered'),
(6,'2025-07-06','Net Banking','Delivered'),
(7,'2025-07-07','UPI','Cancelled'),
(8,'2025-07-08','Credit Card','Delivered'),
(9,'2025-07-09','Debit Card','Delivered'),
(10,'2025-07-10','UPI','Shipped'),
(11,'2025-07-11','Cash on Delivery','Delivered'),
(12,'2025-07-12','UPI','Delivered'),
(13,'2025-07-13','Credit Card','Delivered'),
(14,'2025-07-14','Net Banking','Delivered'),
(15,'2025-07-15','Debit Card','Cancelled'),
(16,'2025-07-16','UPI','Delivered'),
(17,'2025-07-17','Credit Card','Delivered'),
(18,'2025-07-18','Cash on Delivery','Delivered'),
(19,'2025-07-19','UPI','Shipped'),
(20,'2025-07-20','Debit Card','Delivered'),
(1,'2025-07-21','UPI','Delivered'),
(3,'2025-07-22','Credit Card','Delivered'),
(5,'2025-07-23','UPI','Delivered'),
(7,'2025-07-24','Debit Card','Delivered'),
(9,'2025-07-25','Net Banking','Delivered'),
(11,'2025-07-26','Credit Card','Delivered'),
(13,'2025-07-27','UPI','Shipped'),
(15,'2025-07-28','Cash on Delivery','Delivered'),
(17,'2025-07-29','Debit Card','Delivered'),
(20,'2025-07-30','UPI','Delivered');