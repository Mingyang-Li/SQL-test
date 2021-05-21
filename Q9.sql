/*
Write a single SQL statement to insert a new row of data to the Author table 
for a male author whose name is 'Charles Dickens' 
(Charles as the first name and Dickens as the last name). 
The author ID to be entered in the table for Charles Dickens is 2000. 
His date of birth should be 7 February 1812. 

Assume that the gender column stores the gender as a single character:

'M' for Male or 'F' for female
*/

INSERT INTO Author (authorId, firstName, lastName, birthDate, gender)
VALUES (
    2000, 
    'Charles',
    'Dickens',
    '1812-02-07',
    'M'
)