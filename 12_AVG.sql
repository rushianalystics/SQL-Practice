1) SELECT AVG(Price)
   FROM Products;

2) SELECT AVG(Price)
   FROM Products
   WHERE CategoryID = 1;

3) SELECT AVG(PRICE) FROM Products
   WHERE PRODUCTNAME LIKE 'C%';

4) SELECT AVG(Price) AS [average price]
   FROM Products;

5) SELECT * FROM Products
   WHERE Price > (SELECT AVG(Price) FROM Products);

6) SELECT AVG(QUANTITY) FROM OrderDetails;

7) SELECT AVG(QUANTITY) AS AVGQTY 
   FROM OrderDetails
   WHERE PRODUCTID > 50 ;




