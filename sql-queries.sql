--Question 2: For this question you’ll need to use SQL. Follow this link to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

--How many orders were shipped by Speedy Express in total?
SELECT COUNT(OrderID), ShipperID FROM [Orders]

WHERE ShipperID in (SELECT ShipperID FROM [Shippers]
WHERE ShipperName = "Speedy Express"))

--There were 54 orders shipped by Speedy Express

--What is the last name of the employee with the most orders?

SELECT Count(Orders.OrderID) as numOrders, Orders.EmployeeID, Employees.LastName

FROM Orders

INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID

GROUP BY Orders.EmployeeID
ORDER BY numOrders DESC

--EmployeeID 4, Last name is Peacock

--What product was ordered the most by customers in Germany?

SELECT Products.ProductID, Products.ProductName, MAX(OrderDetails.Quantity) as NumOrdered, OrderDetails.OrderID, Orders.CustomerID, Customers.Country

FROM Products

INNER JOIN OrderDetails
ON Products.ProductID=OrderDetails.ProductID

INNER JOIN Orders
ON OrderDetails.OrderID=Orders.OrderID

INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID
WHERE Customers.Country = 'Germany'

--The most ordered product in Germany was the Steeleye Stout, with 100 of them being ordered.
