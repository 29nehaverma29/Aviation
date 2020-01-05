LOAD DATA LOCAL INPATH '/home/cloudera/Aviation_Data_Analysis/Datasets/airlines.csv' into TABLE Aviation.Airlines;

LOAD DATA LOCAL INPATH '/home/cloudera/Aviation_Data_Analysis/Datasets/airports.csv' into TABLE Aviation.Airports;

LOAD DATA LOCAL INPATH '/home/cloudera/Aviation_Data_Analysis/Datasets/flights.csv' into TABLE Aviation.Flights;

INSERT OVERWRITE TABLE flights_filtered 
SELECT 
YEAR ,
MONTH ,
FLIGHT_NUMBER  , 
ORIGIN_AIRPORT ,
DESTINATION_AIRPORT ,
CANCELLED , 
CANCELLATION_REASON ,
ARRIVAL_DELAY ,
DIVERTED 

FROM flights;

INSERT OVERWRITE TABLE tabB SELECT a.Age FROM TableA WHERE a.Age > = 18
