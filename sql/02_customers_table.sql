USE ecommerce_sales;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    join_date DATE
);

INSERT INTO customers
(first_name, last_name, gender, email, phone, city, state, join_date)
VALUES
('Aarav','Sharma','Male','aarav.sharma@gmail.com','9876500001','Pune','Maharashtra','2025-01-10'),
('Diya','Patel','Female','diya.patel@gmail.com','9876500002','Ahmedabad','Gujarat','2025-01-15'),
('Rohan','Verma','Male','rohan.verma@gmail.com','9876500003','Delhi','Delhi','2025-02-01'),
('Ananya','Singh','Female','ananya.singh@gmail.com','9876500004','Lucknow','Uttar Pradesh','2025-02-10'),
('Kabir','Joshi','Male','kabir.joshi@gmail.com','9876500005','Mumbai','Maharashtra','2025-02-15'),
('Sneha','Kulkarni','Female','sneha.k@gmail.com','9876500006','Nagpur','Maharashtra','2025-03-01'),
('Aditya','Gupta','Male','aditya.g@gmail.com','9876500007','Jaipur','Rajasthan','2025-03-05'),
('Priya','Nair','Female','priya.nair@gmail.com','9876500008','Kochi','Kerala','2025-03-12'),
('Rahul','Yadav','Male','rahul.y@gmail.com','9876500009','Patna','Bihar','2025-03-20'),
('Neha','Mishra','Female','neha.m@gmail.com','9876500010','Bhopal','Madhya Pradesh','2025-04-01'),
('Arjun','Reddy','Male','arjun.r@gmail.com','9876500011','Hyderabad','Telangana','2025-04-08'),
('Kavya','Iyer','Female','kavya.i@gmail.com','9876500012','Chennai','Tamil Nadu','2025-04-15'),
('Vikram','Das','Male','vikram.d@gmail.com','9876500013','Kolkata','West Bengal','2025-05-01'),
('Pooja','Chauhan','Female','pooja.c@gmail.com','9876500014','Dehradun','Uttarakhand','2025-05-06'),
('Yash','Mehta','Male','yash.m@gmail.com','9876500015','Surat','Gujarat','2025-05-15'),
('Meera','Jain','Female','meera.j@gmail.com','9876500016','Indore','Madhya Pradesh','2025-06-01'),
('Nikhil','Bansal','Male','nikhil.b@gmail.com','9876500017','Chandigarh','Chandigarh','2025-06-08'),
('Riya','Roy','Female','riya.roy@gmail.com','9876500018','Bhubaneswar','Odisha','2025-06-18'),
('Karan','Malhotra','Male','karan.m@gmail.com','9876500019','Noida','Uttar Pradesh','2025-07-01'),
('Aisha','Khan','Female','aisha.k@gmail.com','9876500020','Bengaluru','Karnataka','2025-07-10');