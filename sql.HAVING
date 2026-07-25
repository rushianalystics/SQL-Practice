1) SELECT COUNT(CustomerID) , CITY FROM Customers
   GROUP BY CITY
   HAVING COUNT(CustomerID) > 5;

2) SELECT COUNT(CategoryID) , CategoryName  FROM Categories
   GROUP BY CategoryName
   HAVING COUNT(CategoryID) < 3 ;

3) SELECT COUNT(ProductID) , Quantity FROM OrderDetails
   GROUP BY Quantity
   HAVING Quantity > 50;

4) SELECT COUNT(EmployeeID) , ShipperID FROM Orders
   GROUP BY ShipperID
   HAVING ShipperID > 2;

5) SELECT SUM(Price) as TotalPrice , SupplierID  FROM Products
   GROUP BY SupplierID
   HAVING SupplierID > 5;
