CREATE TABLE planes (
	name VARCHAR(100),
	iata CHAR(3),
	icao CHAR(4),
	CONSTRAINT planes_pk PRIMARY KEY(iata,icao)
);