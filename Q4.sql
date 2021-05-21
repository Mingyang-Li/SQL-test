/*
Assume that a book belongs to at most one genre. 
Write a single SQL statement to display the 
id, ISBN and title 
for books that belong to Mystery or Sci-Fi or Romance.
*/

SELECT 
    bookId, ISBN, title
FROM Book 
WHERE 
    genre LIKE '%Mystery%'
    OR genre LIKE '%Sci-Fi%'
    OR genre LIKE '%Romance%'