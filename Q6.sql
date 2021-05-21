/*
Write a single SQL statement to display the 
id, first name and last name 
for authors who were born in the 1970s (i.e., birthyear in the range of 1970 to 1979 inclusively) 
and either have a first name starting with the letter 'A' or a last name ending with the letter 'Y'.
*/

SELECT 
    Author.authorId, 
    Author.firstName, 
    Author.lastName
FROM Author 
WHERE 
    YEAR(Author.birthDate) >= 1970 and YEAR(Author.birthDate) <= 1979
    AND (
        Author.firstName LIKE 'A%'
        OR Author.lastName LIKE '%Y'
    )