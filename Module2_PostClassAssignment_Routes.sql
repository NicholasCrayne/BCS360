CREATE TABLE routes (
	airline CHAR(2) NOT NULL,
	airlineID INTEGER NOT NULL,
	sourceAirport CHAR(3) NOT NULL,
	sourceAirportID INTEGER NOT NULL,
	destinationAirport CHAR(3) NOT NULL,
	destinationAirportID INTEGER NOT NULL,
	codeshare CHAR(1),
	stops INTEGER,
	equipment VARCHAR(100),
	CONSTRAINT routes_fk1 FOREIGN KEY(airlineID) REFERENCES airlines(airlineID),
	CONSTRAINT routes_fk2 FOREIGN KEY(sourceAirportID) REFERENCES airports(airportID),
	CONSTRAINT routes_fk3 FOREIGN KEY(destinationAirportID) REFERENCES airports(airportID),
);

ALTER TABLE routes
ADD CONSTRAINT routes_fk4 FOREIGN KEY(airline) REFERENCES airlines(iata);

ALTER TABLE routes
ADD CONSTRAINT routes_fk5 FOREIGN KEY(sourceAirport) REFERENCES airports(iata);

ALTER TABLE routes
ADD CONSTRAINT routes_fk6 FOREIGN KEY(destinationAirport) REFERENCES airports(iata);