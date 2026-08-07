1) SELECT Country, COUNT(CustomerID) AS [Number of Customers]
   FROM Customers
   GROUP BY Country;

2) SELECT CategoryName , COUNT(CategoryID) 
   FROM Categories
   GROUP BY CategoryName ;

3) SELECT ProductID , MAX(Quantity) AS MAXQTY 
   FROM OrderDetails
   GROUP BY ProductID ;

4) SELECT OrderID , MIN(Quantity) AS MINQTY 
   FROM OrderDetails
   GROUP BY OrderID ;

5) SELECT EmployeeID , MAX(ShipperID) AS MAXID 
   FROM Orders
   GROUP BY EmployeeID ;

6) SELECT ProductName , MAX(Price) AS MAXPRICE , MIN(Price) AS MINPRICE 
   FROM Products
   GROUP BY ProductName 
   ORDER BY ProductName ASC;
