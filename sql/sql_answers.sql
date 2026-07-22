USE ecommerce_sales;

-- Question 1:
-- How many customers are registered in our platform?
select count(*) as total_customer from customers;

-- 2. How many products are available in each category?
select category_name,count(product_id) as total_product from categories
join products
on categories.category_id=products.category_id
group by category_name;

-- 3 What is the total number of orders placed by customers?
select c.customer_id,count(iot.order_id) as t_placed_order from customers as c
join orders as o
on c.customer_id=o.customer_id
join order_items as iot
on o.order_id=iot.order_id
group by c.customer_id;

-- 4. What is the total revenue generated from all orders?
select sum(quantity*selling_price) as total_revenue from order_items;





-- 5 Which products are the top 5 best-selling products based on quantity sold?
select p.product_id,sum(o.quantity) as item_quantity from products as p
join order_items as o
on p.product_id=o.product_id
join orders as ort
on ort.order_id=o.order_id
where ort.order_status="shipped"
group by p.product_id 
order by item_quantity desc limit 5;


-- 6. Which products generate the highest revenue?
select p.product_name,sum(o.quantity*o.selling_price) as revenue from products as p
join order_items as o
on p.product_id=o.product_id
group by p.product_name
order by revenue desc limit 1;

-- 7. Which category generates the highest revenue

select c.category_name,sum(o.quantity*o.selling_price) as cat_revenue from categories as c
join products
on c.category_id=products.category_id
join order_items as o
on products.product_id=o.product_id
group by c.category_name
order by cat_revenue desc limit 1;

-- 8. Which category has the highest number of products?
select c.category_name,count(p.category_id) as products from categories as c
join products as p
on c.category_id=p.category_id
group by c.category_name;

-- 9. Who are the top 5 customers based on total spending?

SELECT c.first_name,SUM(oi.quantity * oi.selling_price) AS total_spent
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
JOIN order_items AS oi
ON o.order_id = oi.order_id
JOIN products AS p
ON oi.product_id = p.product_id
GROUP BY c.first_name
ORDER BY total_spent DESC
LIMIT 5;

-- 10. Which customers have placed the maximum number of orders?
select c.first_name,count(o.order_status) as delivered from orders as o
join customers as c
on c.customer_id=o.customer_id
where o.order_status="delivered"
group by c.first_name order by delivered desc;

-- 11. What is the average order value?

select avg(total_order) from (select o.order_id,sum(oi.quantity*oi.selling_price) as total_order from orders as o
join order_items as oi
on o.order_id=oi.order_id
group by o.order_id) as order_value;


-- 12. Which month generated the highest sales revenue?

select month(o.order_date)as months ,sum(oi.quantity*oi.selling_price) as sale_revenue from orders as o
join order_items as oi
on o.order_id=oi.order_id
group by months ORDER BY sale_revenue DESC
LIMIT 1;

-- 13. Which day generate the highest number of orders?

select day(o.order_date)as order_days,sum(oi.quantity*oi.selling_price) as sale_revenue from orders as o
join order_items as oi
on o.order_id=oi.order_id
group by order_days ORDER BY sale_revenue DESC limit 1;

-- 14. Which suppliers provide the maximum number of products?
select s.supplier_name,count(oi.order_id) as sup_order_count from suppliers as s
join customers as c
on s.city=c.city
join orders as o
on c.customer_id=o.customer_id
join order_items as oi
on oi.order_id=o.order_id
group by s.supplier_name order by sup_order_count desc;

-- 15. Which category generated the highest revenue?

select c.category_name,sum(oi.selling_price*oi.quantity) as revenue from categories as c
join products as p
on c.category_id=p.category_id
join order_items as oi
on oi.product_id=p.product_id
group by c.category_name order by revenue desc limit 1;


-- 16. Find products that have never been ordered.

select p.product_name,count(oi.product_id)as count from products as p
left join order_items as oi
on p.product_id=oi.product_id
where (oi.product_id) is null
group by p.product_name;

-- 17. Find customers who have never placed an order.
select c.customer_id,count(o.order_id) as orders from customers as c
left join orders as o
on c.customer_id=o.customer_id
where o.customer_id is null
group by c.customer_id;

-- 18. Calculate the total quantity sold for each customer.
select c.customer_id,sum(oi.quantity) as quantity from customers as c
join orders as o
on c.customer_id=o.customer_id
join order_items as oi
on oi.order_id=o.order_id
group by c.customer_id order by quantity desc;

-- 19. Identify the highest-value order placed by a customer.
select c.customer_id,o.order_id,sum(oi.quantity*oi.selling_price) as total_value from orders as o
join customers as c
on o.customer_id=c.customer_id
join order_items as oi
on oi.order_id=o.order_id
group by c.customer_id,o.order_id
order by total_value desc;

