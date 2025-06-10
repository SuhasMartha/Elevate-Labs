USE ecommerce;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1001, '2022-01-15', 120.50, 10),
(1002, '2022-01-18', 89.99, 15),
(1003, '2022-02-20', 240.00, 12),
(1004, '2022-03-10', 310.75, 8),
(1005, '2022-03-15', 75.00, 25),
(1006, '2022-04-05', 199.99, 22),
(1007, '2022-05-01', 320.00, 11),
(1008, '2022-06-18', 450.50, 16),
(1009, '2022-07-22', 215.25, 5),
(1010, '2022-08-14', 99.99, 18),
(1011, '2022-09-30', 189.50, 7),
(1012, '2022-10-05', 250.00, 20),
(1013, '2022-11-25', 345.60, 13),
(1014, '2022-12-31', 299.99, 9),
(1015, '2023-01-12', 400.00, 6),
(1016, '2023-02-20', 150.75, 27),
(1017, '2023-03-10', 330.50, 14),
(1018, '2023-04-18', 78.00, 30),
(1019, '2023-05-25', 220.20, 17),
(1020, '2023-06-05', 99.00, 24),
(1021, '2023-07-15', 340.75, 4),
(1022, '2023-08-22', 130.00, 33),
(1023, '2023-09-09', 289.99, 2),
(1024, '2023-10-16', 210.50, 19),
(1025, '2023-11-11', 380.00, 21),
(1026, '2023-12-01', 99.99, 10),
(1027, '2024-01-14', 120.00, 5),
(1028, '2024-02-08', 135.75, 3),
(1029, '2024-03-19', 430.00, 28),
(1030, '2024-04-27', 180.50, 35),
(1031, '2024-05-03', 299.25, 29),
(1032, '2024-06-09', 158.00, 6),
(1033, '2024-07-17', 110.10, 38),
(1034, '2024-08-24', 215.00, 40),
(1035, '2024-09-12', 267.50, 8),
(1036, '2024-10-18', 95.99, 31),
(1037, '2024-11-20', 310.00, 1),
(1038, '2024-12-31', 355.65, 12),
(1039, '2022-02-14', 280.40, 9),
(1040, '2022-06-22', 150.00, 10),
(1041, '2023-08-01', 390.20, 16),
(1042, '2023-03-13', 102.75, 18),
(1043, '2022-05-15', 265.00, 4),
(1044, '2023-11-27', 420.90, 19),
(1045, '2022-10-10', 289.50, 26),
(1046, '2024-02-20', 399.99, 20),
(1047, '2024-05-30', 180.40, 23),
(1048, '2022-09-07', 300.00, 13),
(1049, '2023-01-01', 209.85, 14),
(1050, '2023-12-05', 315.00, 15);

-- Monthly Revenue & Order Volume
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    orders
WHERE
    order_date BETWEEN '2023-01-01' AND '2024-12-31'
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    order_year,
    order_month;

--  Monthly Sales Revenue and Order Count
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- Quarterly Sales Trend
SELECT
    CONCAT(YEAR(order_date), '-Q', QUARTER(order_date)) AS quarter,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY quarter
ORDER BY quarter;

--  Year-over-Year (YoY) Growth
SELECT
    YEAR(order_date) AS year,
    SUM(amount) AS yearly_revenue,
    COUNT(DISTINCT order_id) AS yearly_orders
FROM orders
GROUP BY year
ORDER BY year;

-- Top 5 Highest Revenue Months
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS revenue
FROM orders
GROUP BY month
ORDER BY revenue DESC
LIMIT 5;

--  Sales Trend by Product Category
SELECT
    p.category,
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(o.amount) AS category_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category, month
ORDER BY month, category;

-- Sales from Last 6 Months
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS revenue
FROM orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY month
ORDER BY month;
