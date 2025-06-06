# 📊 SQL for Data Analysis

## 🧠 Objective
To practice and demonstrate data analysis skills using **SQL** on a sample **Ecommerce Database**. The task focuses on extracting insights through structured queries, leveraging joins, aggregates, subqueries, and views.

---

## 🧰 Tools Used
- MySQL Workbench
- MySQL RDBMS
- Sample `ecommerce` dataset with:
  - `customers`
  - `products`
  - `orders`
  - `order_items`

---

## 📂 Dataset Schema

### 1. `customers`
| Column         | Type    |
|----------------|---------|
| customer_id    | INT     |
| customer_name  | VARCHAR |
| email          | VARCHAR |
| country        | VARCHAR |

### 2. `products`
| Column         | Type    |
|----------------|---------|
| product_id     | INT     |
| product_name   | VARCHAR |
| category       | VARCHAR |
| price          | DECIMAL |

### 3. `orders`
| Column         | Type    |
|----------------|---------|
| order_id       | INT     |
| customer_id    | INT (FK)|
| order_date     | DATE    |
| total_amount   | DECIMAL |

### 4. `order_items`
| Column         | Type    |
|----------------|---------|
| order_item_id  | INT     |
| order_id       | INT (FK)|
| product_id     | INT (FK)|
| quantity       | INT     |
