-- Insert into Products
INSERT INTO products (name, description, price, category) VALUES
("laptop","a high-performance laptop",120000.00,"electronics"),
("headphones","wireless headphones",200.00,"electronics"),
("book","novel",20.00,"books"),
("mobile","android smartphone",15000.00,"electronics"),
("pen","blue ink pen",10.00,"stationery"),
("notebook","spiral notebook",50.00,"stationery"),
("watch","digital watch",1200.00,"electronics"),
("shoes","running shoes",2500.00,"fashion"),
("tshirt","cotton t-shirt",500.00,"fashion"),
("bag","school backpack",800.00,"accessories");

-- Insert into Customers ✅
INSERT INTO customers (name, email, phone_number, address) VALUES
("Ravi Kumar","ravi@gmail.com","9876543210","Hyderabad"),
("Sita Devi","sita@gmail.com","9123456780","Vijayawada"),
("Arjun Reddy","arjun@gmail.com","9012345678","Warangal"),
("Priya Sharma","priya@gmail.com","9398836127","Delhi"),
("Rahul Verma","rahul@gmail.com","8899776655","Mumbai"),
("Anjali Mehta","anjali@gmail.com","7766554433","Pune"),
("Kiran Rao","kiran@gmail.com","9090909090","Bangalore"),
("Sneha Reddy","sneha@gmail.com","8080808080","Chennai"),
("Vikram Singh","vikram@gmail.com","7070707070","Jaipur"),
("Pooja Gupta","pooja@gmail.com","6060606060","Kolkata");

-- Insert into Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1,'2026-03-01','pending'),
(2,'2026-03-02','completed'),
(3,'2025-03-03','cancelled'),
(4,'2025-03-04','completed'),
(5,'2024-03-05','pending'),
(6,'2024-03-06','completed'),
(7,'2023-03-07','pending'),
(8,'2022-03-08','cancelled'),
(9,'2022-03-09','completed'),
(10,'2021-03-10','pending');

-- Insert into Payments
INSERT INTO payments (orders_id, payment_date, payment_status, amount) VALUES
(1,'2026-03-01','paid',200.00),
(2,'2026-03-02','paid',500.00),
(3,'2026-03-03','unpaid',150.00),
(4,'2026-03-04','paid',700.00),
(5,'2026-03-05','unpaid',300.00),
(6,'2026-03-06','paid',1200.00),
(7,'2026-03-07','unpaid',400.00),
(8,'2026-03-08','paid',650.00),
(9,'2026-03-09','paid',900.00),
(10,'2026-03-10','unpaid',250.00);

-- Insert into Inventory
INSERT INTO inventory (product_id, stock_quantity, last_updated) VALUES
(1,50,'2026-03-01'),
(2,100,'2026-03-02'),
(3,20,'2026-03-03'),
(4,75,'2026-03-04'),
(5,200,'2026-03-05'),
(6,150,'2026-03-06'),
(7,60,'2026-03-07'),
(8,40,'2026-03-08'),
(9,90,'2026-03-09'),
(10,120,'2026-03-10');
