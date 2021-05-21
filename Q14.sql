/* Q14
Consider the situation where manager approval is required for purchasing products with List Price of at least $2000.

For each sales order, display the 
SalesOrderID, 
SalesOrderNumber, 
the number of products that need approval and 
the number of products that do not need approval. 

Then sort the results ascendingly according to SalesOrderID.
Enter your query in the space below. 
*/
SELECT 
	SalesLT.SalesOrderHeader.SalesOrderID,
	COUNT(
		CASE 
			WHEN SalesLT.Product.ListPrice >= 2000 THEN 'NeedApproval'
		END
	) AS 'NeedApproval',
	COUNT(
		CASE 
			WHEN SalesLT.Product.ListPrice < 2000 THEN 'DoNotNeedApproval'
		END
	) AS 'DontNeedApproval'
	--,
	--SalesLT.Product.ListPrice
FROM SalesLT.SalesOrderHeader

JOIN SalesLT.SalesOrderDetail
ON SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID

JOIN SalesLT.Product
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID

GROUP BY SalesLT.SalesOrderHeader.SalesOrderID

ORDER BY SalesLT.SalesOrderHeader.SalesOrderID


