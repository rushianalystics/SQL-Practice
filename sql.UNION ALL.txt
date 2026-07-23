1) SELECT Country FROM Customers
   UNION ALL
   SELECT Country FROM Suppliers
   ORDER BY Country;

2) SELECT CustomerID FROM Customers
   UNION ALL
   SELECT CustomerID FROM Orders ;

3) SELECT OrderID FROM OrderDetails
   UNION ALL
   SELECT OrderID FROM Orders ;

4) SELECT SupplierID FROM Products
   UNION ALL
   SELECT SupplierID FROM Suppliers
   ORDER BY SupplierID DESC;

5) SELECT ProductID FROM OrderDetails
   UNION ALL
   SELECT ProductID FROM Products
   ORDER BY ProductID ASC;

6) SELECT City, Country FROM Customers
   WHERE Country='Germany'
   UNION ALL
   SELECT City, Country FROM Suppliers
   WHERE Country='Germany'
   ORDER BY City;


