# 🚗 Vehicle Sales Analysis Dashboard (Power BI)

This project is a Power BI interactive dashboard designed to analyze and visualize vehicle sales data from a structured JSON dataset. The data includes key attributes such as make, model, sale price, condition, seller, and date of sale.

---

## 📊 Dashboard Features

The dashboard provides an intuitive overview of vehicle sales trends and performance using KPI cards and dynamic visuals.

### 🔹 Key KPI Cards (Metrics)

| KPI Name               | Description |
|------------------------|-------------|
| **Total Vehicles Sold** | Count of total vehicles sold (`vin`) |
| **Total Revenue**       | Sum of all vehicle selling prices |
| **Average Selling Price** | Average price per vehicle |
| **Average Price Deviation** | Difference between MMR (Market Reference Price) and actual selling price |
| **Total States Covered** | Distinct count of U.S. states where sales occurred |
| **Top Selling Make**    | Make with highest number of sales |

---

## 📁 Dataset Structure

Each record in the dataset includes:

```json
{
  "year": 2015,
  "make": "Kia",
  "model": "Sorento",
  "trim": "LX",
  "body": "SUV",
  "transmission": "automatic",
  "vin": "5xyktca69fg566472",
  "state": "ca",
  "condition": 5.0,
  "odometer": 16639.0,
  "color": "white",
  "interior": "black",
  "seller": "kia motors america inc",
  "mmr": 20500.0,
  "sellingprice": 21500.0,
  "saledate": "2014-12-16T12:30:00"
}
