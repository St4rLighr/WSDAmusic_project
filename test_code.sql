```sql
  
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
  
```
