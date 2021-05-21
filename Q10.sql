/*
Q10
How many products satisfy all of the following criteria:

Do not have a weight, and
Have either a large or extra-large size, and
Have a standard cost of less than $10.00
Enter your answer in the box below.
*/

SELECT 
	SalesLT.Product.ProductID,
	SalesLT.Product.Weight,
	SalesLT.Product.Size,
	SalesLT.Product.StandardCost
FROM SalesLT.Product

WHERE 
	SalesLT.Product.Weight IS NULL 
	AND (SalesLT.Product.Size LIKE '%L%' OR SalesLT.Product.Size LIKE '%XL%')
	AND SalesLT.Product.StandardCost < 10
--ANS: 3