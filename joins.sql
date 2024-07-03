/*
Created by: Simi Ibraheem
Create date: 16/05/2024
Description: JOINS
*/

SELECT
	* -- returns every single column 
	
FROM
	Invoice AS i

INNER JOIN 
	Customer AS c -- aliasing the  table

ON -- provides the query with the link between these two table which are the cutomer id field in the invoice table and the customer id  key in the customer table
	i.CustomerId = c.CustomerId

ORDER BY c.CustomerId

/*
Description: JOINS on more than two  tables | What employees are responsible for the 10  highest sales?
*/

SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total

FROM
	Invoice AS i

INNER JOIN
	Customer AS c

ON
	i.CustomerId = c.CustomerId

INNER JOIN
	Employee AS e

ON
	c.SupportRepId = e.EmployeeId

ORDER BY
		i.total DESC
		
LIMIT  10


