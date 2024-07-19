/*
Created by: Simi Ibraheem
Create Date: 05/05/2024
Description: This query displays all customers first, last names and email addresses
*/

SELECT 
	FirstName  AS [Customer First Name], 
	LastName AS 'Customer Last Name', 
	Email AS EMAIL

FROM 
	Customer

ORDER BY 
	FirstName ASC, -- This column is now sorted in asc order 
	LastName DESC -- This column is now sorted in desc order 
	
LIMIT 10 -- used to get the top 10 rows 

/*
Description: 
WSDA Music Sales Goal:
They want as many customers as possible to spend between £7.00 and £15.00

Sales Categories
Baseline purchase - Between  0.99 and 1.99
Low Purchase - Between 2.00 and 6.99
Target Purchase - Between 7.00  and 15.00
Top performer - Above 15.00

*/


SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7 AND 15 THEN 'Target Purchase'
	ELSE 'Top Performer' 
	END AS PurchaseType

FROM
	Invoice

ORDER BY
	BillingCity



