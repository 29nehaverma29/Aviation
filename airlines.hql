create database if not exists Aviation location '/user/data/hive/Aviation.db';

use Aviation;

create external table Aviation.Airlines
(IATA_CODE string,
AIRLINE string)
row format delimited
fields terminated by ','
location '/user/data/hive/Aviation.db/Airlines';
