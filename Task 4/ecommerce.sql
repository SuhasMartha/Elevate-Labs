-- Step 1: Create the database
CREATE DATABASE ecommerce;
USE ecommerce;

-- Step 2: Create parent tables first (no foreign keys yet)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Step 3: Now create orders table (depends on customers)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Step 4: Finally create order_items (depends on orders and products)
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert into customers
INSERT INTO customers VALUES 
(1, 'Alice Johnson', 'alice@example.com', 'USA'),
(2, 'Bob Smith', 'bob@example.com', 'Canada');

-- Insert into products
INSERT INTO products VALUES 
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Headphones', 'Electronics', 200.00);

-- Insert into orders
INSERT INTO orders VALUES 
(101, 1, '2024-06-01', 1600.00),
(102, 2, '2024-06-02', 200.00);

-- Insert into order_items
INSERT INTO order_items VALUES 
(1, 101, 1, 1),  -- 1 Laptop
(2, 101, 2, 2),  -- 2 Headphones
(3, 102, 2, 1);  -- 1 Headphone


-- JOIN – Orders with Customer Details
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.country,
    o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- INNER JOIN – Detailed Order Items View
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    oi.quantity,
    p.price,
    (oi.quantity * p.price) AS line_total
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_date;

--  Aggregate Function – Total Sales by Customer
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;


-- Subquery – Customers Who Spent More Than Average
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING total_spent > (
    SELECT AVG(total_amount) FROM orders
);

-- Create a View for Order Summary
CREATE VIEW order_summary AS
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Add Index for Faster Lookup
CREATE INDEX idx_customer_country ON customers(country);
