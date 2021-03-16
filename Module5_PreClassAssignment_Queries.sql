----------------------------------------------------------

CREATE VIEW module5_table
AS
SELECT r.cuisine_description, avg(i.score) AS AVG_Score
FROM inspections i JOIN restaurants r ON i.camis=r.camis
GROUP BY r.cuisine_description;

----------------------------------------------------------

SELECT cuisine_description, Avg_Score
FROM module5_table
ORDER BY Avg_Score DESC

----------------------------------------------------------