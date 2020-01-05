create database if not exists Aviation location '/user/data/hive/Aviation.db';

use Aviation;

create external table Aviation.Airports
(IATA_CODE string,
AIRPORT string,
CITY string,
STATE string,
COUNTRY string,
LATITUDE string,
LONGITUDE string)
row format delimited
fields terminated by ','
location '/user/data/hive/Aviation.db/Airports';
