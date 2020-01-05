1. select month, count(CANCELLED) as t from flights_filtered where CANCELLED==1 AND CANCELLATION_REASON ='B' group by month order by t desc limit 1;
2. select origin_airport, destination_airport , count(diverted) as t from flights_filtered where diverted=1 group by origin_airport, destination_airport
order by t desc limit 10;
3. select destination_airport , count(destination_airport) as t from flights_filtered group by destination_airport order by t desc limit 5;
