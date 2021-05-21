/* Q13
Display 
SalesOrderID and the number of products in the sales order 
for all sales orders that satisfy the following two conditions:

(1) contain more than 1 product, and 

(2) contain one or more products whose ProductID is smaller than 800.

Enter your query in the space below.

WHERE COUNT(SalesLT.SalesOrderDetail.ProductID) > 1
AND 
*/

SELECT 
	SalesLT.SalesOrderDetail.SalesOrderID,
	COUNT(SalesLT.SalesOrderDetail.ProductID) AS [NumberOfUniqueProducts]
FROM SalesLT.SalesOrderDetail
WHERE SalesLT.SalesOrderDetail.ProductID < 800
GROUP BY SalesLT.SalesOrderDetail.SalesOrderID
HAVING 
	COUNT(SalesLT.SalesOrderDetail.ProductID) > 1

	 