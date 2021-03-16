CREATE TABLE instructor (
	ram CHAR(9),
	i_name VARCHAR(200) NOT NULL,
	dept CHAR(3) NOT NULL,
	office CHAR(6),
	CONSTRAINT instructor_pk PRIMARY KEY(ram)
);