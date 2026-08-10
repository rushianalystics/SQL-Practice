1) SELECT MAX(Price)
   FROM Products; 

2) SELECT MAX(QUANTITY) AS MAXQTY 
   FROM OrderDetails;

3) SELECT MAX(PRODUCTID) AS MAXXID 
   FROM OrderDetails;

4) SELECT MAX(BirthDate) AS LatestBirthdate
   FROM Employees;

5) SELECT MAX(Price) AS HighestPrice, CategoryID
   FROM Products
   GROUP BY CategoryID;

6) SELECT MAX(PRICE) AS MAXPRICE , CATEGORYID FROM Products
   WHERE PRICE > 20
   GROUP BY CATEGORYID;

7) SELECT MAX(QUANTITY) AS MAXQTY , PRODUCTID  
   FROM OrderDetails
   WHERE QUANTITY > 50
   GROUP BY PRODUCTID ;


