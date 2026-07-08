1) SELECT * FROM Customers
   WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

2) SELECT * FROM Categories
   WHERE CategoryName = 'Condiments' AND Description LIKE 'S%';

3) SELECT * FROM Employees
   WHERE LastName LIKE 'D%' AND FIRSTNAME LIKE 'N%';

4) SELECT * FROM Customers
   WHERE Country = 'Brazil'
   AND City = 'Rio de Janeiro'
   AND CustomerID > 50;

5) SELECT * FROM OrderDetails
   WHERE Quantity > 20 AND ProductID < 20;

6) SELECT * FROM Orders
   WHERE EmployeeID > 5 AND ShipperID < 2 ;

7) SELECT * FROM Products
   WHERE PRICE > 20 
   AND ProductName LIKE 'C%'
   AND CategoryID > 5 ;

8) SELECT * FROM Suppliers
   WHERE City LIKE 'L%' 
   AND Country LIKE '%K';
