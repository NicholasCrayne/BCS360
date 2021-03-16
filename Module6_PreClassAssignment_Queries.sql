--------------------------------------------------

SELECT
	r.dba AS Restaurant_Name,
	MIN(i.score) AS Lowest_Score
FROM restaurants r LEFT JOIN inspections i
ON r.camis=i.camis
WHERE r.dba IN
	(SELECT DISTINCT dba FROM restaurants)
GROUP BY r.dba
ORDER BY r.dba ASC;

--------------------------------------------------

SELECT
	r.dba AS Restaurant_Name,
	i.grade AS Most_Recent_Grade
FROM restaurants r LEFT JOIN inspections i
ON r.camis=i.camis
WHERE i.inspection_date =
	(SELECT MAX(inspection_date)
	 FROM inspections)
GROUP BY r.dba, i.grade
ORDER BY r.dba ASC;
---------------------------------
SELECT DISTINCT camis, grade
FROM inspections
WHERE inspection_date =
	(SELECT MAX(inspection_date)
	 from inspections)
ORDER BY camis ASC;

--------------------------------------------------

SELECT name
FROM airports
WHERE name NOT IN
	(SELECT sourceAirport
	 FROM routes);

--------------------------------------------------