1) SELECT ProductID, ProductName, CategoryName
   FROM Products
   INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

2) SELECT OrderDetails.ProductID , OrderDetails.Quantity , Orders.EmployeeID , Orders.ShipperID 
   FROM OrderDetails
   INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID ;

3) SELECT OrderDetails.Quantity , Products.ProductName , Products.Price 
   FROM OrderDetails
   INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID ;

4) SELECT Suppliers.SupplierName , Suppliers.City , Products.SupplierID 
   FROM Suppliers
   INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID ;

5) SELECT Orders.EmployeeID , Orders.OrderDate , Shippers.ShipperName , Shippers.Phone
   FROM Orders
   INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID ;
