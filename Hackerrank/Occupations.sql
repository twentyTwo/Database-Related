WITH Doctor_CTE (Name, ID)  
AS (SELECT Name, ROW_NUMBER() over (PARTITION BY occupation ORDER BY name) id FROM Occupations WHERE Occupation = 'Doctor'),   
Professor_CTE (Name, ID)  
AS (SELECT Name, ROW_NUMBER() over (PARTITION BY occupation ORDER BY name) id FROM Occupations WHERE Occupation = 'Professor' ), 
Singer_CTE (Name, ID)  
AS (SELECT Name, ROW_NUMBER() over (PARTITION BY occupation ORDER BY name) id FROM Occupations WHERE Occupation = 'Singer'),   
Actor_CTE (Name, ID)  
AS (SELECT Name, ROW_NUMBER() over (PARTITION BY occupation ORDER BY name) id FROM Occupations WHERE Occupation = 'Actor' ) 



SELECT D.Name, P.Name, S.Name, A.Name
FROM
Doctor_CTE AS D
FULL OUTER JOIN Professor_CTE AS P ON D.ID = P.ID
FULL OUTER JOIN Singer_CTE AS S ON P.ID = S.ID
FULL OUTER JOIN Actor_CTE AS A ON S.ID = A.ID
