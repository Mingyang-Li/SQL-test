SELECT a.authorId, a.firstName, a.lastName, COUNT(w.bookId) as num_books
FROM Author as a 

LEFT JOIN Writing as w
ON a.authorId = w.authorId

GROUP BY  a.authorId, a.firstName, a.lastName
ORDER BY num_books desc

/*
business logic:
Display all the ids, first names, last names and number of books published by each author 
by the number of books they published in descending order, including the authors who haven't published any books at all. 

*/