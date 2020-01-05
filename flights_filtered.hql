create external table Aviation.flights_filtered
(YEAR string,
MONTH string,
FLIGHT_NUMBER  string, 
ORIGIN_AIRPORT string,
DESTINATION_AIRPORT string,
CANCELLED string, 
CANCELLATION_REASON string,
ARRIVAL_DELAY string,
DIVERTED string)
row format delimited
fields terminated by ','
location '/user/data/hive/Aviation.db/flights_filtered';





hive -e 'select * from flights_filtered' | sed 's/[\t]/,/g' > /home/cloudera/Aviation_Data_Analysis/Datasets/flights_filtered.csv
