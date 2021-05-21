/*
Write a single SQL statement to display the 
publisher id, publisher name, its parent publisher id, and its parent publisher name 
for all publishers whose parent publisher locates in Auckland.
*/

SELECT 
    P1.publisherId,
    P1.publisherName,
    P1.parentPublisherId
    P2.publisherName
FROM Publisher P1

LEFT JOIN Publisher P2
ON P1.publisherId = P2.publisherId

WHERE P2.publisherCity LIKE '%Auckland%'

