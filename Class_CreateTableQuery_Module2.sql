CREATE TABLE class (
	crn INTEGER,
	academic_year CHAR(4),
	dept CHAR(3) NOT NULL,
	course CHAR(3) NOT NULL,
	CONSTRAINT class_pk PRIMARY KEY(crn, academic_year)
);