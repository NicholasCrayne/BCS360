----------------------------------------------------------------------

CREATE VIEW module4_table
AS
SELECT
	r.airlineID AS Airline_ID,
	al.name AS Airline_Name,
	ap.name AS Source_Airport,
	ap.city AS Source_Arpt_City,
	ap.country AS Source_Arpt_Country,
	ap2.name AS Destination_Airport,
	ap2.city AS Dest_Arpt_City,
	ap2.country AS Dest_Arpt_Country,
	r.stops AS Num_of_Stops
FROM (((airlines al
	INNER JOIN routes r ON r.airlineID=al.airlineID)
	INNER JOIN airports ap ON r.sourceAirportID=ap.airportID)
	INNER JOIN airports ap2 ON r.destinationAirportID=ap2.airportID);
	
----------------------------------------------------------------------

CREATE INDEX routes_index1 ON routes(airlineID);
CREATE INDEX routes_index2 ON routes(sourceAirportID);
CREATE INDEX routes_index3 ON routes(destinationAirportID);
CREATE INDEX airlines_index ON airlines(airlineID);
CREATE INDEX airports_index ON airports(airportID);

----------------------------------------------------------------------