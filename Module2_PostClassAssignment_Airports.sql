CREATE TABLE airports (
	airportID INTEGER NOT NULL,
	name VARCHAR(100),
	city VARCHAR(100),
	country VARCHAR(100),
	iata CHAR(3) NOT NULL,
	icao CHAR(4) NOT NULL,
	latitude DECIMAL(6),
	longitude DECIMAL(6),
	altitude INTEGER,
	timezone DECIMAL(2,1),
	DST CHAR(1),
	tzDatabase VARCHAR(100),
	type VARCHAR(100),
	source VARCHAR(100),
	CONSTRAINT airports_pk PRIMARY KEY(airportID)
);

ALTER TABLE airports
ADD CONSTRAINT airports_iata_uq UNIQUE(iata);

ALTER TABLE airports
ADD CONSTRAINT airports_icao_uq UNIQUE(icao);