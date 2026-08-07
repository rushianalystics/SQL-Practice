1) SELECT CustomerName  FROM Customers
   WHERE NOT EXISTS (
   SELECT * FROM Customers);

2) SELECT CategoryName FROM Categories
   WHERE NOT EXISTS (
   SELECT ProductName FROM Products 
   WHERE Categories.CategoryID = Products.CategoryID AND PRICE > 50);

3) SELECT Quantity  FROM OrderDetails
   WHERE NOT EXISTS (
   SELECT ShipperID FROM Orders 
   WHERE OrderDetails.OrderID = Orders.OrderID AND Shipperid > 4);

4) SELECT SupplierName FROM Suppliers
   WHERE NOT EXISTS (
   SELECT ProductName
   FROM Products
   WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20 );

5) SELECT SupplierName FROM Suppliers
   WHERE NOT EXISTS (
   SELECT ProductName
   FROM Products
   WHERE Products.SupplierID = Suppliers.supplierID AND Price > 50 );

        

        
