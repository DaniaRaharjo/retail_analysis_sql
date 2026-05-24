-- DAMC Retail Analysis

-- Q1: Total sales per year

SELECT YEAR_ID, SUM(SALES) AS Total_Sales
FROM sales_data
GROUP BY YEAR_ID
ORDER BY Total_Sales DESC;

-- Q2: Country with the highest Classic Cars sales (2004)

SELECT PRODUCTLINE, SUM(SALES) AS Total_Sales
FROM sales_data
WHERE PRODUCTLINE = 'Classic Cars' AND YEAR_ID = 2004
GROUP BY COUNTRY
ORDER BY Total_Sales DESC
LIMIT 1;

-- Q3: Most sold product line (by quantity) from Sep 2003 to Mar 2004

SELECT PRODUCTLINE, SUM(QUANTITYORDERED) AS Total_Qty
FROM sales_data
WHERE STR_TO_DATE(ORDERDATE, '%c/%e/%Y) BETWEEN '2003-09-01' '2004-03-31'
GROUP BY PRODUCTLINE
ORDER BY Total_Qty DESC
LIMIT 1;
 