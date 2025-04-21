desc sales_data;


use project_1;


-- Summary Stats 

-- Total Number of Orders
SELECT COUNT(DISTINCT order_id) AS total_orders FROM sales_data;

-- Total Sales Revenue
SELECT SUM(sales) AS total_sales FROM sales_data;

-- Total Profit Earned
SELECT SUM(profit) AS total_profit FROM sales_data;

-- Total Number of Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales_data;

-- Average Order Value (AOV) = Total Sales / Total Orders
SELECT SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value FROM sales_data;

-- Average Profit Per Order
SELECT SUM(profit) / COUNT(DISTINCT order_id) AS avg_profit_per_order FROM sales_data;

-- Total Quantity of Products Sold
SELECT SUM(quantity) AS total_quantity_sold FROM sales_data;



CREATE OR REPLACE VIEW date_region_bridge AS
SELECT DISTINCT 
    Order_Date,
    Region,
    CONCAT(Order_Date, '-', Region) AS date_region_key
FROM sales_data
ORDER BY Order_Date, Region;


CREATE OR REPLACE VIEW customer_sales_analysis AS
SELECT 
    CONCAT(Order_Date, '-', Region) AS date_region_key,  -- Bridge Key
    Order_Date,
    Region,
    Customer_ID,
    Customer,
    Industry,
    Segment,
    SUM(Sales) AS total_revenue,
    SUM(Profit) AS total_profit
FROM sales_data
GROUP BY Order_Date, Region, Customer_ID, Customer, Industry, Segment
ORDER BY Order_Date, Region, Customer_ID;


CREATE OR REPLACE VIEW product_sales_analysis AS
SELECT 

    CONCAT(Order_Date, '-', Region) AS date_region_key,  -- Bridge Key
    Order_Date,
    Region,
    Product,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    AVG(Discount) AS avg_discount,
    SUM(Quantity) AS total_quantity
FROM sales_data
GROUP BY Order_Date, Region, Product
ORDER BY Order_Date, Region, Product;


    
    CREATE OR REPLACE VIEW product_pairing_view AS
SELECT
    LEAST(A.Product, B.Product) AS Product_A,
    GREATEST(A.Product, B.Product) AS Product_B,
    CONCAT(A.Order_Date, '-', A.Region) AS date_region_key,
    COUNT(*) AS Pair_Count,
    SUM(A.Profit + B.Profit) AS Total_Profit,
    AVG(A.Profit + B.Profit) AS Avg_Profit_Per_Pair
FROM sales_data A
JOIN sales_data B
    ON A.Customer_ID = B.Customer_ID
    AND A.Order_ID = B.Order_ID
    AND A.Product <> B.Product
    AND A.Product < B.Product  -- Prevent reverse duplicates
GROUP BY
    LEAST(A.Product, B.Product),
    GREATEST(A.Product, B.Product),
    CONCAT(A.Order_Date, '-', A.Region);

