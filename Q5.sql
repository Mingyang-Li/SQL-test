/*
Write a single SQL statement to list the 
id, first name and last name 
of all the authors who wrote the book 'Data Warehouse System'.
*/

SELECT 
    Author.authorId, 
    Author.firstName, 
    Author.lastName

FROM Author 

JOIN Writing
ON Author.authorId = Writing.authorId

JOIN Book
ON Writing.bookId = Book.bookId

WHERE Book.title = 'Data Warehouse System'