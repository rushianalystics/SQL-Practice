1) SELECT * FROM Customers
   WHERE City LIKE 'B%' OR Country LIKE 'G%';

2) SELECT * FROM Categories
   WHERE CategoryName LIKE 'B%' OR CategoryID > 5;

3) SELECT * FROM Employees
   WHERE LastName = 'Davolio' OR FirstName LIKE 'N';

4) SELECT * FROM Customers
   WHERE City = 'Berlin'
   OR CustomerName LIKE 'G%'
   OR Country = 'Norway'; 

5) SELECT * FROM OrderDetails
   WHERE ProductID > 50
   OR Quantity > 20
   OR OrderDetailID > 50;

6) SELECT * FROM Customers
   WHERE Country = 'Spain'
   AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

7) SELECT * FROM Orders
   WHERE ShipperID > 1 AND (EmployeeID > 5 OR CustomerID > 50);

8) SELECT * FROM Customers
   WHERE Country = 'Spain'
   AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';


