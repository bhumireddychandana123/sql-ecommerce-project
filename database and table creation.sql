-- Create Database
CREATE DATABASE onlinestoreDB;
USE onlinestoreDB;

-- 1. Products Table
CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(225) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(225)
);

-- 2. Customers Table
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(225),
    email VARCHAR(225) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    address VARCHAR(225)
);

-- 3. Orders Table
CREATE TABLE orders (
    orders_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    status ENUM("pending","completed","cancelled") DEFAULT "pending",
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 4. Payments Table
CREATE TABLE payments (
    payment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    orders_id INT,
    payment_date DATE NOT NULL,
    payment_status ENUM("paid","unpaid") DEFAULT "unpaid",
    amount DECIMAL(10,2),
    FOREIGN KEY (orders_id) REFERENCES orders(orders_id)
);

-- 5. Inventory Table
CREATE TABLE inventory (
    inventory_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    stock_quantity INT DEFAULT 0,
    last_updated DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
