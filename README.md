# 🎄 Christmas Sales & Return Impact Analysis 📊

![SQL](https://img.shields.io/badge/Language-SQL-blue) 
![Python](https://img.shields.io/badge/Language-Python-green) 
![Jupyter](https://img.shields.io/badge/Tools-Jupyter-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

## 🎯 Project Goal
High sales during the holidays are great, but **returns** can quietly destroy profitability. This project analyzes a festive e-commerce dataset to identify which products are "Profit Stars" and which are "Operational Risks" due to high return rates.

## 🚀 Key Features
* **Data Cleaning:** Handled Foreign Key constraints and unique Primary Key indexing in MySQL.
* **Profit Logic:** Engineered a `Net Profit` metric that deducts the cost of returned items from total revenue.
* **Visual Storytelling:** Developed a Python visualization that uses **Conditional Coloring** to highlight "Risk Zones."

---

## 📈 The Data Story
After analyzing 50 holiday transactions, the results were clear:

| Product Name | Status | Net Profit | Insight |
| :--- | :--- | :--- | :--- |
| **Bluetooth Speaker** | 🏆 Winner | **$225.00** | 0% Return Rate. Maximum efficiency. |
| **Noise Canceling Buds** | ⚠️ Risk | **$300.00** | High profit but 20% Return Rate. Needs QC review. |
| **Gourmet Chocolate** | ✅ Stable | **$75.00** | Lower revenue but highly reliable (0% returns). |

---

## 💻 Technical Implementation

### 1. SQL Deep Dive
I used **Subqueries** and **CASE statements** to filter for the "Perfect Products"—those with zero returns and high profit.

```sql
SELECT product_name, total_orders, net_profit
FROM (
    SELECT 
        i.product_name,
        COUNT(t.order_id) AS total_orders,
        SUM(CASE WHEN t.order_status = 'Returned' THEN 1 ELSE 0 END) AS units_returned,
        SUM(CASE WHEN t.order_status = 'Sold' THEN (i.sale_price - i.cost_price) 
            ELSE (i.cost_price * -1) END) AS net_profit
    FROM Inventory i
    JOIN Transactions t ON i.item_id = t.item_id
    GROUP BY i.product_name
) AS performance_summary
WHERE units_returned = 0 AND net_profit > 100;

```

### 2. Python Visualization

The **Python script** takes the SQL output and converts it into a scannable dashboard.

* 🔴 **Red Bars**: Products with at least one return (Profit at risk).
* 🟢 **Green Bars**: Products with perfect order fulfillment.

---

## 🖼️ Project Screenshots

<img width="1887" height="913" alt="SQL Results Grid" src="https://github.com/user-attachments/assets/5ab3e0cb-111f-4a69-9d8c-fb6ff098384d" />

> **Above:** SQL Results Grid & Python Data Visualization

---

## 💡 Business Recommendation

Based on this data, the company should **increase marketing spend on the Bluetooth Speaker** for the New Year's sale. While the Buds bring in more cash, the Speaker's **0% return rate** ensures a much higher ROI (Return on Investment) and lower logistical overhead.

---

## 📫 Connect with Me

* **LinkedIn:** [www.linkedin.com/in/sarathkumares](https://www.google.com/search?q=https://www.linkedin.com/in/sarathkumares)
* **Hashtags:** #DataAnalytics #ECommerce #SQL #Python #KPI #Profitability #AnalystInAction

```
