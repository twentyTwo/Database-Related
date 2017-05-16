## Documentation
- STUFF
- LEAD / LAG
- XML PATH
- COALESCE
- RANK Functions
- CTE
- OVER Clause
- FOR XML PATH
- Analyzing a Query 
- Pagination
- Tally
- GROUP_CONCAT
- PARSENAME
  *Example 1
   ```sql
   Declare @ObjectName nVarChar(1000) 
   Set @ObjectName = 'HeadOfficeSQL1.Northwind.dbo.Authors' 

   SELECT PARSENAME(@ObjectName, 4) as Server,PARSENAME(@ObjectName, 3) as DB,PARSENAME(@ObjectName, 2) as Owner,PARSENAME(@ObjectName, 1)    as Object
   ```
   Output: 
   ||Server||DB||Owner||Object||
   |HeadOfficeSQL1|Northwind|dbo|Authors|
   
   
   *Example 2
   ```sql
   DECLARE @TestString AS VARCHAR (200) = '_999_123456_8888888-123564578'; 
   SELECT PARSENAME(REPLACE(@TestString, '_', '.'), 2)
   ```
   Output: 12345
