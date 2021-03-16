--------------------------------------------------------------------------

SELECT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40931569'
	
--------------------------------------------------------------------------

SELECT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40947076'
	
--------------------------------------------------------------------------

SELECT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40564411'
	
--------------------------------------------------------------------------

SELECT DISTINCT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40931569'
	
--------------------------------------------------------------------------

SELECT DISTINCT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40947076'
	
--------------------------------------------------------------------------

SELECT DISTINCT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '40564411'
	
--------------------------------------------------------------------------

SELECT INSPECTION_DATE
FROM [gerstld].[restaurant].[inspections_raw_data]
WHERE CAMIS = '41528853'
	
--------------------------------------------------------------------------
	
SELECT DISTINCT camis, inspection_date, inspection_type,action, score, grade, grade_date, record_date
INTO inspections
FROM [gerstld].[restaurant].[inspections_raw_data];
	
--------------------------------------------------------------------------
	
SELECT DISTINCT violation_code, violation_description, critical_flag
INTO violations
FROM [gerstld].[restaurant].[inspections_raw_data];
	
--------------------------------------------------------------------------
	
SELECT DISTINCT camis, dba, boro, building, street, zipcode, phone, cuisine_description
INTO restaurants
FROM [gerstld].[restaurant].[inspections_raw_data];
	
--------------------------------------------------------------------------
	
SELECT DISTINCT camis, inspection_date, inspection_type, violation_code
INTO violation_found
FROM [gerstld].[restaurant].[inspections_raw_data];
	
--------------------------------------------------------------------------