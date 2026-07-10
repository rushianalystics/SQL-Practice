1) SELECT * FROM Customers
   WHERE NOT Country = 'Spain';

2) SELECT * FROM Customers
   WHERE NOT City = 'Berlin';

3) SELECT * FROM Categories
   WHERE NOT CategoryName LIKE 'B%';

4) SELECT * FROM Customers
   WHERE CustomerID NOT BETWEEN 10 AND 60;

5) SELECT * FROM OrderDetails
   WHERE NOT Quantity BETWEEN 10 AND 20 ;

6) SELECT * FROM OrderDetails
   WHERE NOT ProductID BETWEEN 50 AND 90 ;

7) SELECT * FROM Customers
   WHERE City NOT IN ('Paris', 'London');

8) SELECT * FROM Customers
   WHERE NOT CustomerID > 50;

9) SELECT * FROM Customers
   WHERE NOT CustomerId < 90;

10) SELECT * FROM Customers
    WHERE NOT CustomerID < 50;






