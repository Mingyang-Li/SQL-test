/*Describe the business purpose of the following query.*/
SELECT sub.ProductCategoryID, SUM(sub.c) c
FROM (
		(
			SELECT pc.ProductCategoryID, COUNT(p.ProductID) AS c
            FROM SalesLT.ProductCategory pc
            LEFT JOIN SalesLT.Product p ON pc.ProductCategoryID = p.ProductCategoryID
            WHERE ParentProductCategoryID IS NOT NULL
            GROUP BY pc.ProductCategoryID
        )
        UNION
        (
            SELECT ParentProductCategoryID AS ProductCategoryID, COUNT(p.ProductID) AS c
            FROM SalesLT.ProductCategory pc
            LEFT JOIN SalesLT.Product p ON pc.ProductCategoryID = p.ProductCategoryID
            WHERE ParentProductCategoryID IS NOT NULL
            GROUP BY pc.ParentProductCategoryID
        ) 
	) sub
GROUP BY sub.ProductCategoryID
ORDER BY 2, 1
/*
In ascending order,
displaying ProductCategoryID
*/