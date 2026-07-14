1) SELECT COUNT(*)
   FROM Products;

2) SELECT COUNT(ProductName)
   FROM Products;

3) SELECT COUNT(ProductName)
   FROM Products;

4) SELECT COUNT(CategoryName) 
   FROM Categories;

5) SELECT COUNT(QUANTITY) AS COUNTQTY 
   FROM OrderDetails;

6) SELECT COUNT(DISTINCT Price)
   FROM Products;

7) SELECT COUNT(ProductID)
   FROM Products
   WHERE price > 10;

8) SELECT COUNT(*) AS [Number of records], CategoryID
   FROM Products
   GROUP BY CategoryID;

9) SELECT COUNT(PRICE) FROM Products
   WHERE PRICE > 20 ;





