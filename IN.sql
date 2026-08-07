1) SELECT * FROM Customers
   WHERE Country IN ('Germany', 'France', 'UK');

2) SELECT * FROM Categories
   WHERE CategoryName IN ('Beverages' , 'produce');

3) SELECT * FROM Customers
   WHERE Country NOT IN ('Germany', 'France', 'UK');

4) SELECT * FROM Products
   WHERE Price NOT IN (20 , 50);

5) SELECT * FROM Suppliers
   WHERE City NOT IN ('UK' , 'USA');

