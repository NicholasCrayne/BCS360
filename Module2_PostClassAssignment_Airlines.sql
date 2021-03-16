CREATE TABLE airlines (
	airlineID INTEGER NOT NULL,
	name VARCHAR(100),
	alias VARCHAR(100),
	iata CHAR(2) NOT NULL,
	icao CHAR(3) NOT NULL,
	callsign VARCHAR(100),
	country VARCHAR(100),
	active CHAR(1)
	CONSTRAINT airlines_pk PRIMARY KEY(airlineID)
);

ALTER TABLE airlines
ADD CONSTRAINT airlines_iata_uq UNIQUE(iata);

ALTER TABLE airports
ADD CONSTRAINT airlines_icao_uq UNIQUE(icao);