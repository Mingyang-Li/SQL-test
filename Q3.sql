/*
Write a single SQL statement to display the 
id, first name and last name 
for authors whose full name (first name and last name) contains less than 20 characters. 
*/

SELECT 
    authorId,
    firstName,
    lastName
FROM Author
WHERE LEN(firstName + lastName) < 20