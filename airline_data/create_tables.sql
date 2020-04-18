drop database if exists airlines;

create database airlines;

\c airlines;
drop table if exists RawData_2010;

create table RawData_2010 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2011;

create table RawData_2011 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2012;

create table RawData_2012 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2013;

create table RawData_2013 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2014;

create table RawData_2014 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2015;

create table RawData_2015 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2016;

create table RawData_2016 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2017;

create table RawData_2017 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2018;

create table RawData_2018 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists RawData_2019;

create table RawData_2019 (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats decimal,
Passengers decimal,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10)
);

drop table if exists AircraftType;

create table if not exists AircraftType(
Code char(10),
Description text
);

drop table if exists RawData_MonthlyFlight_Summary;

create table if not exists RawData_MonthlyFlight_Summary (
Unique_carrier char(5),
YearMonth char(10),
Departures_scheduled decimal,
Departures_performed decimal,
Seats decimal,
Passengers decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal
);

drop table if exists RawData_MonthlyFlight_StockFuel_Summary;

create table RawData_MonthlyFlight_StockFuel_Summary (
IDX integer,
Unique_carrier text,
YearMonth char(10),
Total_departures_scheduled decimal,
Total_departures_performed decimal,
Agg_seat_count decimal,
Total_passenger_count decimal,
Total_miles_traveled decimal,
Total_minutes_r2r decimal,
Total_air_minutes decimal,
Year integer,
Month integer,
Carrier_name text,
Total_fuel_cost decimal,
Full_date date,
Month_stock_price_max decimal,
Month_stock_price_min decimal,
Month_stock_price_open decimal,
Month_stock_price_close decimal,
Month_stock_price_volume decimal,
Adj_month_stock_price_close decimal,
Stock_symbol char(5)
);

drop table if exists All_AirlinesData;

create table All_AirlinesData (
Departures_scheduled decimal,
Departures_performed decimal,
Payload	decimal,
Seats integer,
Passengers integer,
Freight	decimal,
Mail decimal,
Distance decimal,
Ramp_to_ramp decimal,
Air_time decimal,
Unique_carrier text,
Unique_carrier_name	text,
Origin_airport_id integer,
Origin char(5),
Dest_airport_id integer,
Dest char(5),
Aircraft_type integer,
Year integer,
Quarter integer,
Month integer,
YearMonth char(10),
PartitionedDate date
) partition by range (PartitionedDate);

