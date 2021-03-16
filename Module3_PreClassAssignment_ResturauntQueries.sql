--------------------------------------------------------------

SELECT cousine_description
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE boro = 'Staten Island' AND dba LIKE 'Dunkin%'

--------------------------------------------------------------

SELECT dba
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE boro = 'Manhattan' AND cuisine_description = 'Australian'

--------------------------------------------------------------

SELECT DISTINCT boro
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE cuisine_description = 'Afgan'

--------------------------------------------------------------

SELECT DISTINCT boro
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE cuisine_description = 'Californian'

--------------------------------------------------------------