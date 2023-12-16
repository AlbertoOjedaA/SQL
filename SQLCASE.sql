
-- My Data Analysis Contribution to Swiss Retail Company's Marketing Strategy

-- Embark on a journey through data analysis where I took on the challenge of aiding a leading retail company in Switzerland to gain profound insights into their customer base. 
-- My role involved deciphering intricate datasets to enhance the company's marketing strategy and foster a deeper understanding of their clientele.


-- Create DB
Create Database Startup

Use Startup

-- Create table Users
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Gender VARCHAR(10),
    Birthdate DATE,
    JoinDate DATETIME NOT NULL
    
);

-- Create table Products
Create Table Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL)
   
   
   -- Tabla de Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    ProductID INT,
    OrderDate DATETIME NOT NULL,
    DeliveryDate DATE,
    City VARCHAR(50),
    Country VARCHAR(50),
    Quantity INT NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID))
    
    
-- Insert Data

-- Users

Insert into Users (UserID, UserName, Email, Gender, Birthdate, JoinDate)
VALUES
  (1, 'Alice Johnson', 'alice.johnson@email.com', 'Female', '1990-05-15', '2021-01-01 10:30:00'),
  (2, 'Bob Williams', 'bob.williams@email.com', 'Male', '1985-08-22', '2021-02-02 11:45:00'),
  (3, 'Charlie Davis', 'charlie.davis@email.com', 'Male', '1992-03-10', '2021-03-15 14:20:00'),
  (4, 'Diana Rodriguez', 'diana.rodriguez@email.com', 'Female', '1988-11-28', '2021-04-16 16:45:00'),
  (5, 'Eva Martin', 'eva.martin@email.com', 'Female', '1994-07-02', '2021-05-20 09:15:00'),
  (6, 'Frank Smith', 'frank.smith@email.com', 'Male', '1987-12-11', '2021-06-25 12:30:00'),
  (7, 'Grace Lee', 'grace.lee@email.com', 'Female', '1991-09-08', '2021-07-10 14:45:00'),
  (8, 'Henry Brown', 'henry.brown@email.com', 'Male', '1986-02-14', '2021-08-15 16:00:00'),
  (9, 'Ivy Taylor', 'ivy.taylor@email.com', 'Female', '1993-04-30', '2021-09-20 18:15:00'),
  (10, 'Jack Moore', 'jack.moore@email.com', 'Male', '1989-10-05', '2021-10-25 20:30:00'),
  (11, 'Katherine White', 'katherine.white@email.com', 'Female', '1996-01-18', '2021-11-30 22:45:00'),
  (12, 'Leo Davis', 'leo.davis@email.com', 'Male', '1984-06-22', '2022-01-05 09:00:00'),
  (13, 'Mia Johnson', 'mia.johnson@email.com', 'Female', '1997-08-17', '2022-02-10 11:15:00'),
  (14, 'Nathan Brown', 'nathan.brown@email.com', 'Male', '1983-03-26', '2022-03-15 13:30:00'),
  (15, 'Olivia Garcia', 'olivia.garcia@email.com', 'Female', '1998-05-12', '2022-04-20 15:45:00'),
  (16, 'Paul Martin', 'paul.martin@email.com', 'Male', '1982-09-27', '2022-05-25 18:00:00'),
  (17, 'Quinn Miller', 'quinn.miller@email.com', 'Female', '1999-11-02', '2022-06-30 20:15:00'),
  (18, 'Ryan Taylor', 'ryan.taylor@email.com', 'Male', '1981-04-07', '2022-08-05 22:30:00'),
  (19, 'Samantha Wilson', 'samantha.wilson@email.com', 'Female', '2000-06-12', '2022-09-10 00:45:00'),
  (20, 'Tyler Harris', 'tyler.harris@email.com', 'Male', '1980-12-17', '2022-10-15 03:00:00'),
  (21, 'Uma Smith', 'uma.smith@email.com', 'Female', '2001-02-22', '2022-11-20 05:15:00'),
  (22, 'Victor Miller', 'victor.miller@email.com', 'Male', '1979-07-29', '2022-12-25 07:30:00'),
  (23, 'Wendy Martinez', 'wendy.martinez@email.com', 'Female', '2002-09-03', '2023-01-30 09:45:00'),
  (24, 'Xander Johnson', 'xander.johnson@email.com', 'Male', '1978-01-08', '2023-03-06 12:00:00'),
  (25, 'Yasmine Lee', 'yasmine.lee@email.com', 'Female', '2003-03-15', '2023-04-10 14:15:00'),
  (26, 'Zachary Davis', 'zachary.davis@email.com', 'Male', '1977-05-20', '2023-05-15 16:30:00'),
  (27, 'Abby Wilson', 'abby.wilson@email.com', 'Female', '2004-07-25', '2023-06-20 18:45:00'),
  (28, 'Brian Moore', 'brian.moore@email.com', 'Male', '1976-10-30', '2023-07-25 21:00:00'),
  (29, 'Catherine Taylor', 'catherine.taylor@email.com', 'Female', '2005-12-05', '2023-08-30 23:15:00'),
  (30, 'David Brown', 'david.brown@email.com', 'Male', '1975-02-09', '2023-10-05 01:30:00');
  
  
-- Insert into Products
INSERT INTO Products (ProductID, ProductName, Price)
VALUES
  (1, 'Laptop', 999.99),
  (2, 'Smartphone', 599.99),
  (3, 'Tablet', 299.99),
  (4, 'Headphones', 89.99),
  (5, 'Smartwatch', 129.99),
  (6, 'Digital Camera', 449.99),
  (7, 'Fitness Tracker', 79.99),
  (8, 'Gaming Console', 299.99),
  (9, '4K TV', 799.99),
  (10, 'Wireless Earbuds', 69.99),
  (11, 'Bluetooth Speaker', 49.99),
  (12, 'Home Security Camera', 129.99),
  (13, 'External Hard Drive', 119.99),
  (14, 'Coffee Maker', 49.99),
  (15, 'Robot Vacuum', 199.99),
  (16, 'Air Purifier', 149.99),
  (17, 'Wireless Mouse', 29.99),
  (18, 'Desk Chair', 149.99),
  (19, 'Electric Toothbrush', 39.99),
  (20, 'Blender', 69.99),
  (21, 'Portable Charger', 19.99),
  (22, 'Travel Backpack', 79.99),
  (23, 'Wireless Keyboard', 39.99),
  (24, 'LED Desk Lamp', 29.99),
  (25, 'Resistance Bands', 14.99),
  (26, 'Yoga Mat', 19.99),
  (27, 'Dumbbell Set', 49.99),
  (28, 'Cycling Helmet', 34.99),
  (29, 'Running Shoes', 79.99),
  (30, 'Sleeping Bag', 49.99);
  
  -- Insert into Orders
  
  -- Insert 30 rows into Orders table
INSERT INTO Orders (OrderID, UserID, ProductID, OrderDate, DeliveryDate, City, Country, Quantity)
VALUES
  (1, 1, 3, '2023-01-10 12:30:00', '2023-01-15', 'Zurich', 'Switzerland', 2, 599.98),
  (2, 2, 8, '2023-02-15 14:45:00', '2023-02-20', 'Geneva', 'Switzerland', 1, 299.99),
  (3, 3, 12, '2023-03-20 17:00:00', '2023-03-25', 'Bern', 'Switzerland', 3, 389.97),
  (4, 4, 5, '2023-04-25 19:15:00', '2023-04-30', 'Lucerne', 'Switzerland', 1, 129.99),
  (5, 5, 20, '2023-05-30 21:30:00', '2023-06-04', 'Zurich', 'Switzerland', 2, 139.98),
  (6, 6, 16, '2023-07-05 23:45:00', '2023-07-10', 'Geneva', 'Switzerland', 1, 149.99),
  (7, 7, 1, '2023-08-10 02:00:00', '2023-08-15', 'Bern', 'Switzerland', 2, 1999.98),
  (8, 8, 9, '2023-09-15 04:15:00', '2023-09-20', 'Lucerne', 'Switzerland', 1, 799.99),
  (9, 9, 14, '2023-10-20 06:30:00', '2023-10-25', 'Zurich', 'Switzerland', 3, 149.97),
  (10, 10, 28, '2023-11-25 08:45:00', '2023-11-30', 'Geneva', 'Switzerland', 1, 21.00),
  (11, 11, 19, '2023-12-01 11:00:00', '2023-12-06', 'Bern', 'Switzerland', 2, 79.98),
  (12, 12, 27, '2023-12-01 13:15:00', '2023-12-06', 'Lucerne', 'Switzerland', 1, 49.99),
  (13, 13, 4, '2023-12-01 15:30:00', '2023-12-06', 'Zurich', 'Switzerland', 2, 179.98),
  (14, 14, 10, '2023-12-01 17:45:00', '2023-12-06', 'Geneva', 'Switzerland', 1, 69.99),
  (15, 15, 26, '2023-12-01 20:00:00', '2023-12-06', 'Bern', 'Switzerland', 3, 59.97),
  (16, 16, 7, '2023-12-01 22:15:00', '2023-12-06', 'Lucerne', 'Switzerland', 1, 79.99),
  (17, 17, 15, '2023-12-01 00:30:00', '2023-12-06', 'Zurich', 'Switzerland', 2, 129.98),
  (18, 18, 21, '2023-12-01 02:45:00', '2023-12-06', 'Geneva', 'Switzerland', 1, 19.99),
  (19, 19, 22, '2023-12-01 05:00:00', '2023-12-06', 'Bern', 'Switzerland', 2, 159.98),
  (20, 6, 22, '2023-12-01 05:00:00', '2023-12-06', 'Bern', 'Switzerland', 2, 159.98),
  (21, 8, 22, '2023-12-21 05:00:00', '2023-12-26', 'Bern', 'Switzerland', 2, 159.98),
  (22, 17, 15, '2023-12-01 00:30:00', '2023-12-06', 'Zurich', 'Switzerland', 2, 19.98),
  (23, 2, 19, '2023-11-01 00:30:00', '2023-11-03', 'Zurich', 'Switzerland', 1, 79.98)
  
  
  -- Exploratoy Phase
  
  Select * from Users
  
  Select * from Products
  
  Select * from Orders
  
  
   -- Fix Data 
  ALTER TABLE Orders
DROP COLUMN TotalAmount;
  
  -- Questions
--   Retrieve User Information:

-- Write a SQL query to retrieve the details of users who have placed orders, including their username, email, and the total number of orders each user has placed.

SELECT users.UserName, users.Email, count(Orders.OrderId) as TotalOrders from Users
Join orders on Users.UserID = Orders.userID
Group By users.UserID Order By TotalOrders desc 


-- Product Sales Analysis:

-- Create a query to display the top 5 products (by total quantity sold) along with their product names and total sales amount.

Select Products.ProductName as Name, Orders.Quantity, (Orders.Quantity*Products.Price) as TotalSales  from Products
inner join Orders on Orders.ProductId = Products.ProductId
order by Orders.quantity desc
Limit 5


-- Order Timing Analysis:

-- Write a query to find the average time it takes for each user to receive their orders (from the order date to the delivery date). Display the results with user information.

Select Users.UserName as Name, round(avg(Timestampdiff(Day, OrderDate, DeliveryDate ))) as Day from Users
inner join Orders on Users.UserId = Orders.UserID
group by Name

-- Total Sales by City:

-- Generate a report showing the total sales amount for each city. Include the city name and the total sales amount, ordered from highest to lowest sales.

SELECT ORDERS.City, count(Orders.Quantity) as Total_Orders, sum(Orders.Quantity) as Amount_sold, sum(Products.Price*Orders.Quantity) As TotalPaid FROM ORDERS
inner join Products on Products.ProductID = Orders.ProductID
group by ORDERS.City
Order by TotalPaid desc


Select * from orders

-- User Order History:
-- For a specific user, retrieve their order history with details such as order date, product name, quantity, and total amount spent.
-- User ID 2

Select Users.UserName,  Orders.OrderDate, Products.Productname, Orders.quantity, (Orders.quantity*Products.Price) as TotalAmount from Orders
inner join Products on Products.ProductID = Orders.ProductID 
inner join Users on Users.UserID = Orders.UserID
where Orders.UserId = 2

-- Monthly Sales Trends:
-- Create a query to display the monthly sales trends, showing the total sales amount for each month.

SELECT MONTHNAME(Orders.OrderDate) as Month, sum(Orders.Quantity) as  Product_Quantity_Sold, count(Orders.OrderID) as Number_of_Orders, sum(Orders.Quantity*Products.Price) as TotalSpend  FROM ORDERS
Inner join Products on Products.ProductID = Orders.ProductID 
Group by MONTHNAME(Orders.OrderDate)
Order by Product_Quantity_sold desc 

-- Weekly Sales Trends:
-- Create a query to display the dayoftheweek sales trends, showing the total sales amount for each day of the week.
Select Dayname(Orders.OrderDate) as Day_of_week, sum(Orders.Quantity) as Quantity_Ordered, count(Orders.OrderID) as Number_of_Orders, sum(Orders.Quantity * Products.Price) as Total_Amount from Orders
inner join Products on Orders.ProductID = Products.ProductID
group by Dayname(Orders.OrderDate) 
order by Total_Amount desc



-- Product Price Range Analysis:
-- Write a query to categorize products into price ranges (e.g., low, medium, high) based on their price. Provide the count of products in each price range.
SELECT 
CASE WHEN PRICE <= 150 THEN "LOW"
WHEN PRICE <= 250 THEN "MEDIUM"
WHEN PRICE >= 251 THEN "HIGH"
END AS STR_PRICE, COUNT(PRODUCTS.PRICE) AS COUNT_OF_PRODUCTS
FROM PRODUCTS
GROUP BY STR_PRICE
ORDER BY COUNT_OF_PRODUCTS DESC

-- Deliveries:
-- Identify orders with deliveries that were completed before than the delivery date AVERAGE. Display order details, including the user, product, order date, and delivery date.

SELECT USERS.username, Products.Productname, Timestampdiff(DAy,Orders.Orderdate, Orders.deliverydate) AS Days_to_deliver, Orders.Orderdate, Orders.deliverydate from Orders
inner join Products on Orders.ProductID = Products.ProductID
inner join Users on Users.UserID = Orders.UserID
where Timestampdiff(DAy, Orders.Orderdate, Orders.deliverydate)  <  (Select avg(Timestampdiff(DAy,Orders.Orderdate, Orders.deliverydate)) from orders)

Select (Timestampdiff(DAy,Orders.Orderdate, Orders.deliverydate)) from orders


-- User Loyalty:
-- Find users who have placed orders in consecutive months. Display user information and the months they have made consecutive orders.

SELECT
    U.UserID,
    U.UserName,
    O1.OrderDate AS FirstOrderDate,
    O2.OrderDate AS SecondOrderDate
FROM
    Users U
INNER JOIN
    Orders O1 ON U.UserID = O1.UserID
INNER JOIN
    Orders O2 ON U.UserID = O2.UserID
            AND O1.OrderDate < O2.OrderDate
            AND TIMESTAMPDIFF(MONTH, O1.OrderDate, O2.OrderDate) = 1


-- Popular Products in Switzerland:
-- Retrieve the top 3 most popular products (by quantity sold) in Switzerland, including the product name and total quantity sold.

SELECT products.productname, sum(Orders.Quantity) as Quantity from Orders 
inner join Products on Orders.ProductID = Products.ProductID
Where orders.country = 'Switzerland'
group by products.productname
order by sum(Orders.Quantity) desc
Limit 3

/* Customer Segmentation:
Segment customers into distinct groups based on their purchasing behavior and demographics. Provide insights into each segment. */

# Moorning Group
CREATE TEMPORARY TABLE CustomerSegmentationM AS (
Select Users.Username, Users.Gender, Users.BirthDate, Hour(Orders.OrderDate) as Hour,
CASE When Hour(Orders.OrderDate) between 4 and 12 Then "Moorning"
When Hour(Orders.OrderDate) between 13 and 17 then "Afternoon"
When Hour(Orders.OrderDate) > 18  then "At Night"
Else "At Night"
end as "Day Time", Orders.city, Orders.Quantity,(Orders.Quantity*Products.Price) as TotalAmount from Orders
inner join Products on Products.ProductID = Orders.ProductID
inner join Users on Users.UserID = Orders.UserID
Where Hour(Orders.OrderDate) between 4 and 12
Order by TotalAmount desc 
)


Select * from CustomerSegmentationM

SELECT COUNT(*) AS TotalTransactions
FROM CustomerSegmentationM #8

SELECT
    round(AVG(Quantity)) AS AvgQuantity,
    SUM(TotalAmount) AS TotalAmountSpent
FROM CustomerSegmentationM # AvgQuantity 2, Total Amount Spend 2144,85

SELECT
    City,
    COUNT(*) AS TransactionCount
FROM CustomerSegmentationM
GROUP BY City  # Bern 4, Zurich 2, Geneve & Lucerne 1
ORDER BY TransactionCount desc 

SELECT
    Gender,
    COUNT(*) AS GenderCount
FROM CustomerSegmentationM
GROUP BY Gender # Male 4, Female 4


SELECT
 Gender,
    round(AVG(Datediff(Current_Date(), Birthdate)/365)) AS AVGAge
    FROM CustomerSegmentationM
GROUP BY Gender # Male 36, Female 29

#----------------------------------------

# Afternoon Group
Create Temporary Table CustomerSegmentationA as (
Select Users.Username, Users.Gender, Users.BirthDate, Hour(Orders.OrderDate) as Hour,
CASE When Hour(Orders.OrderDate) between 4 and 12 Then "Moorning"
When Hour(Orders.OrderDate) between 13 and 17 then "Afternoon"
When Hour(Orders.OrderDate) > 18  then "At Night"
Else "At Night"
end as "Day Time", Orders.city, Orders.Quantity,(Orders.Quantity*Products.Price) as TotalAmount from Orders
inner join Products on Products.ProductID = Orders.ProductID
inner join Users on Users.UserID = Orders.UserID
Where Hour(Orders.OrderDate) between 13 and 17
Order by TotalAmount desc )

Select * from CustomerSegmentationA

SELECT COUNT(*) AS TotalTransactions
FROM CustomerSegmentationA #5

SELECT
    round(AVG(Quantity)) AS AvgQuantity,
    SUM(TotalAmount) AS TotalAmountSpent
FROM CustomerSegmentationA # AvgQuantity 2, Total Amount Spend 989,952

SELECT
    City,
    COUNT(*) AS TransactionCount
FROM CustomerSegmentationA
GROUP BY City  # Geneve 1, Zurich 1, Bern & Lucerne 1
ORDER BY TransactionCount desc 

SELECT
    Gender,
    COUNT(*) AS GenderCount
FROM CustomerSegmentationA
GROUP BY Gender # Male 4, Female 1


SELECT
 Gender,
    round(AVG(Datediff(Current_Date(), Birthdate)/365)) AS AVGAge
    FROM CustomerSegmentationA
GROUP BY Gender # Male 38, Female 26
#----------------------------------------

# At Night Group
Create Temporary Table CustomerSegmentationN as (
Select Users.Username, Users.Gender, Users.BirthDate, Hour(Orders.OrderDate) as Hour,
CASE When Hour(Orders.OrderDate) between 4 and 12 Then "Moorning"
When Hour(Orders.OrderDate) between 13 and 17 then "Afternoon"
When Hour(Orders.OrderDate) > 18  then "At Night"
Else "At Night"
end as "Day Time", Orders.city, Orders.Quantity,(Orders.Quantity*Products.Price) as TotalAmount from Orders
inner join Products on Products.ProductID = Orders.ProductID
inner join Users on Users.UserID = Orders.UserID
Where Hour(Orders.OrderDate) > 18 or Hour(Orders.OrderDate) <=3
Order by TotalAmount desc )


Select * from CustomerSegmentationN

SELECT COUNT(*) AS TotalTransactions
FROM CustomerSegmentationN #10

SELECT
    round(AVG(Quantity)) AS AvgQuantity,
    SUM(TotalAmount) AS TotalAmountSpent
FROM CustomerSegmentationN # AvgQuantity 2, Total Amount Spend 3419,84

SELECT
    City,
    COUNT(*) AS TransactionCount
FROM CustomerSegmentationN
GROUP BY City  # Zurich 4, Bern 2, Geneve & Lucerne 2
ORDER BY TransactionCount desc

SELECT
    Gender,
    COUNT(*) AS GenderCount
FROM CustomerSegmentationN
GROUP BY Gender. # 6 Female, 4 Male

SELECT
 Gender,
    round(AVG(Datediff(Current_Date(), Birthdate)/365)) AS AVGAge
    FROM CustomerSegmentationN
GROUP BY Gender # Male 40, Female 28


SELECT Username, max(TotalAmount) from CustomerSegmentationN


Select * from CustomerSegmentationN


