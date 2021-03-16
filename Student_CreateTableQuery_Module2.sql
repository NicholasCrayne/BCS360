CREATE TABLE student (
	ram CHAR(9),
	s_name VARCHAR(200) NOT NULL,
	major CHAR(4),
	ssn CHAR(11) NOT NULL,
	CONSTRAINT student_pk PRIMARY KEY(ram),
	CONSTRAINT student_ssn_uq UNIQUE(ssn),
);