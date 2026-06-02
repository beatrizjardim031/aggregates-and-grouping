USE northwind;

-- 1. How many suppliers are there?  Use a query! 
SELECT COUNT(*) AS suppliers_count
FROM suppliers;

-- 2. What is the sum of all the employee's salaries? 
SELECT SUM(salary) AS sum_salary
FROM employees;

-- 3. What is the price of the cheapest item that Northwind sells?   
SELECT MIN(unitPrice) AS min_price
FROM products;

-- 4. What is the average price of items that Northwind sells?   
SELECT AVG(unitPrice) AS avr_price
FROM products;

-- 5. What is the price of the most expensive item that Northwind sells?  
SELECT MAX(unitPrice) AS max_price
FROM products;
 
-- 6. What is the supplier ID of each supplier and the number of items they supply?  
SELECT SupplierID, count(*) AS supplierID_count
FROM products
GROUP BY SupplierID;
-- You can answer this query by only looking at the Products table. 
-- 7. What is the category ID of each category and the average price of each item in the 
-- category?  You can answer this query by only looking at the Products table. 
SELECT CategoryID, AVG(UnitPrice) AS AVG_UNITPRICE
FROM products
GROUP BY CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of 
-- each supplier and the number of items they supply?  You can answer this query 
-- by only looking at the Products table. 
SELECT SupplierID, count(*) AS supplierID_count
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

-- 9. List the product id, product name, and inventory value (unit price * units on 
-- hand).  Sort the results in descending order by value.  If two or more have the 
-- same value, order by product name.
SELECT productID, productName, UnitPrice * UnitsInStock AS inventory_value
FROM products
ORDER BY inventory_value DESC, ProductName;
