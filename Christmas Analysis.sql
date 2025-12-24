## --Christmas Return Impact Analysis--
-- Creating Database
create database Christmas_Project;
use Christmas_Project;

-- Creating Tables
-- 1. Creating Inventory Table
create table Inventory(
	item_id int primary key,
    product_name varchar(100),
    category varchar(50),
    cost_price decimal(10, 2),
    sale_price decimal(10 ,2)
    );
-- 2.reating Sales and Returns Table
create table Transactions (
order_id int primary key,
item_id int,
order_date date,
order_status varchar(20),  -- Sold or Returned
return_reason varchar(100),
foreign key (item_id) references Inventory(item_id)
);
-- Inserting Values
-- 1. Inserting Festive Products
insert into Inventory values
(1, 'Gourmet Chocolate Box', 'Food', 10.00, 25.00),
(2, 'Smart Coffee Mug', 'Electronics', 40.00, 89.99),
(3, 'Ugly Christmas Sweater', 'Apparel', 12.00, 35.00),
(4, 'Noise Canceling Buds', 'Electronics', 60.00, 150.00),
(5, 'Handmade Ornament', 'Home Decor', 3.00, 12.00),
(6, 'Silk Pajama Set', 'Apparel', 25.00, 65.00),
(7, 'Electric Wine Opener', 'Home Decor', 15.00, 40.00),
(8, 'Bluetooth Speaker', 'Electronics', 30.00, 75.00),
(9, 'Organic Tea Sampler', 'Food', 8.00, 22.00),
(10, 'Leather Wallet', 'Apparel', 18.00, 50.00);

-- 2. Inserting Transactions
insert into Transactions(order_id, item_id, order_date, order_status, return_reason) VALUES 
(1001, 1, '2025-12-18', 'Sold', NULL), (1002, 2, '2025-12-18', 'Sold', NULL), (1003, 3, '2025-12-18', 'Returned', 'Wrong Size'),
(1004, 4, '2025-12-18', 'Sold', NULL), (1005, 5, '2025-12-18', 'Sold', NULL), (1006, 6, '2025-12-19', 'Sold', NULL),
(1007, 7, '2025-12-19', 'Returned', 'Defective'), (1008, 8, '2025-12-19', 'Sold', NULL), (1009, 9, '2025-12-19', 'Sold', NULL),
(1010, 10, '2025-12-19', 'Sold', NULL), (1011, 1, '2025-12-20', 'Sold', NULL), (1012, 3, '2025-12-20', 'Returned', 'Changed Mind'),
(1013, 2, '2025-12-20', 'Sold', NULL), (1014, 4, '2025-12-20', 'Returned', 'Too Late'), (1015, 6, '2025-12-20', 'Sold', NULL),
(1016, 8, '2025-12-21', 'Sold', NULL), (1017, 9, '2025-12-21', 'Sold', NULL), (1018, 5, '2025-12-21', 'Sold', NULL),
(1019, 7, '2025-12-21', 'Sold', NULL), (1020, 10, '2025-12-21', 'Returned', 'Wrong Size'), (1021, 1, '2025-12-22', 'Sold', NULL),
(1022, 2, '2025-12-22', 'Sold', NULL), (1023, 3, '2025-12-22', 'Sold', NULL), (1024, 4, '2025-12-22', 'Sold', NULL),
(1025, 6, '2025-12-22', 'Returned', 'Damaged'), (1026, 8, '2025-12-23', 'Sold', NULL), (1027, 9, '2025-12-23', 'Sold', NULL),
(1028, 5, '2025-12-23', 'Sold', NULL), (1029, 7, '2025-12-23', 'Sold', NULL), (1030, 10, '2025-12-23', 'Sold', NULL),
(1031, 1, '2025-12-24', 'Sold', NULL), (1032, 2, '2025-12-24', 'Returned', 'Not as Described'), (1033, 3, '2025-12-24', 'Sold', NULL),
(1034, 4, '2025-12-24', 'Sold', NULL), (1035, 6, '2025-12-24', 'Sold', NULL), (1036, 8, '2025-12-24', 'Sold', NULL),
(1037, 9, '2025-12-24', 'Sold', NULL), (1038, 5, '2025-12-24', 'Sold', NULL), (1039, 7, '2025-12-24', 'Sold', NULL),
(1040, 10, '2025-12-24', 'Sold', NULL), (1041, 1, '2025-12-25', 'Sold', NULL), (1042, 2, '2025-12-25', 'Sold', NULL),
(1043, 3, '2025-12-25', 'Returned', 'Wrong Size'), (1044, 4, '2025-12-25', 'Sold', NULL), (1045, 6, '2025-12-25', 'Sold', NULL),
(1046, 8, '2025-12-25', 'Sold', NULL), (1047, 9, '2025-12-25', 'Sold', NULL), (1048, 5, '2025-12-25', 'Returned', 'Duplicate Gift'),
(1049, 7, '2025-12-25', 'Sold', NULL), (1050, 10, '2025-12-25', 'Sold', NULL);

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Transactions;
TRUNCATE TABLE Inventory;

INSERT INTO Inventory (item_id, product_name, category, cost_price, sale_price) VALUES 
(1, 'Gourmet Chocolate Box', 'Food', 10.00, 25.00),
(2, 'Smart Coffee Mug', 'Electronics', 40.00, 89.99),
(3, 'Ugly Christmas Sweater', 'Apparel', 12.00, 35.00),
(4, 'Noise Canceling Buds', 'Electronics', 60.00, 150.00),
(5, 'Handmade Ornament', 'Home Decor', 3.00, 12.00),
(6, 'Silk Pajama Set', 'Apparel', 25.00, 65.00),
(7, 'Electric Wine Opener', 'Home Decor', 15.00, 40.00),
(8, 'Bluetooth Speaker', 'Electronics', 30.00, 75.00),
(9, 'Organic Tea Sampler', 'Food', 8.00, 22.00),
(10, 'Leather Wallet', 'Apparel', 18.00, 50.00);

INSERT INTO Transactions (order_id, item_id, order_date, order_status, return_reason) VALUES 
(1001, 1, '2025-12-18', 'Sold', NULL), (1002, 2, '2025-12-18', 'Sold', NULL), (1003, 3, '2025-12-18', 'Returned', 'Wrong Size'),
(1004, 4, '2025-12-18', 'Sold', NULL), (1005, 5, '2025-12-18', 'Sold', NULL), (1006, 6, '2025-12-19', 'Sold', NULL),
(1007, 7, '2025-12-19', 'Returned', 'Defective'), (1008, 8, '2025-12-19', 'Sold', NULL), (1009, 9, '2025-12-19', 'Sold', NULL),
(1010, 10, '2025-12-19', 'Sold', NULL), (1011, 1, '2025-12-20', 'Sold', NULL), (1012, 3, '2025-12-20', 'Returned', 'Changed Mind'),
(1013, 2, '2025-12-20', 'Sold', NULL), (1014, 4, '2025-12-20', 'Returned', 'Too Late'), (1015, 6, '2025-12-20', 'Sold', NULL),
(1016, 8, '2025-12-21', 'Sold', NULL), (1017, 9, '2025-12-21', 'Sold', NULL), (1018, 5, '2025-12-21', 'Sold', NULL),
(1019, 7, '2025-12-21', 'Sold', NULL), (1020, 10, '2025-12-21', 'Returned', 'Wrong Size'), (1021, 1, '2025-12-22', 'Sold', NULL),
(1022, 2, '2025-12-22', 'Sold', NULL), (1023, 3, '2025-12-22', 'Sold', NULL), (1024, 4, '2025-12-22', 'Sold', NULL),
(1025, 6, '2025-12-22', 'Returned', 'Damaged'), (1026, 8, '2025-12-23', 'Sold', NULL), (1027, 9, '2025-12-23', 'Sold', NULL),
(1028, 5, '2025-12-23', 'Sold', NULL), (1029, 7, '2025-12-23', 'Sold', NULL), (1030, 10, '2025-12-23', 'Sold', NULL),
(1031, 1, '2025-12-24', 'Sold', NULL), (1032, 2, '2025-12-24', 'Returned', 'Not as Described'), (1033, 3, '2025-12-24', 'Sold', NULL),
(1034, 4, '2025-12-24', 'Sold', NULL), (1035, 6, '2025-12-24', 'Sold', NULL), (1036, 8, '2025-12-24', 'Sold', NULL),
(1037, 9, '2025-12-24', 'Sold', NULL), (1038, 5, '2025-12-24', 'Sold', NULL), (1039, 7, '2025-12-24', 'Sold', NULL),
(1040, 10, '2025-12-24', 'Sold', NULL), (1041, 1, '2025-12-25', 'Sold', NULL), (1042, 2, '2025-12-25', 'Sold', NULL),
(1043, 3, '2025-12-25', 'Returned', 'Wrong Size'), (1044, 4, '2025-12-25', 'Sold', NULL), (1045, 6, '2025-12-25', 'Sold', NULL),
(1046, 8, '2025-12-25', 'Sold', NULL), (1047, 9, '2025-12-25', 'Sold', NULL), (1048, 5, '2025-12-25', 'Returned', 'Duplicate Gift'),
(1049, 7, '2025-12-25', 'Sold', NULL), (1050, 10, '2025-12-25', 'Sold', NULL);


-- Let dive deep into the data --
-- 1 The Holiday Product Performance

select 
i.product_name,
    COUNT(t.order_id) AS total_orders,
    SUM(CASE WHEN t.order_status = 'Returned' THEN 1 ELSE 0 END) AS units_returned,
    -- Gross Revenue only counts items that stayed sold
    SUM(CASE WHEN t.order_status = 'Sold' THEN i.sale_price ELSE 0 END) AS gross_revenue,
    -- Net Profit: (Profit from sales) - (Cost loss from returns)
    ROUND(SUM(CASE 
        WHEN t.order_status = 'Sold' THEN (i.sale_price - i.cost_price)
        ELSE (i.cost_price * -1) 
    END), 2) AS net_profit
FROM Inventory i
JOIN Transactions t ON i.item_id = t.item_id
GROUP BY i.product_name
ORDER BY net_profit DESC;


-- 2 Return Category Analysis
SELECT 
    i.category,
    COUNT(t.order_id) AS volume,
    ROUND((SUM(CASE WHEN t.order_status = 'Returned' THEN 1 ELSE 0 END) / COUNT(t.order_id)) * 100, 2) AS return_rate_pct
FROM Inventory i
JOIN Transactions t ON i.item_id = t.item_id
GROUP BY i.category
ORDER BY return_rate_pct DESC;

-- 3 Reason for Retuns
SELECT 
    return_reason, 
    COUNT(*) AS reason_count
FROM Transactions
WHERE order_status = 'Returned'
GROUP BY return_reason
ORDER BY reason_count DESC;

-- 4 products that had zero returns and a profit over 100
SELECT product_name, total_orders, net_profit
FROM (
    -- This is a subquery using the logic you just ran!
    SELECT 
        i.product_name,
        COUNT(t.order_id) AS total_orders,
        SUM(CASE WHEN t.order_status = 'Returned' THEN 1 ELSE 0 END) AS units_returned,
        SUM(CASE WHEN t.order_status = 'Sold' THEN (i.sale_price - i.cost_price) ELSE (i.cost_price * -1) END) AS net_profit
    FROM Inventory i
    JOIN Transactions t ON i.item_id = t.item_id
    GROUP BY i.product_name
) AS performance_summary
WHERE units_returned = 0 AND net_profit > 100;