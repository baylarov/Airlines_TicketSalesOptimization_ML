\c airlines;

truncate table rawdata_2010;
truncate table rawdata_2011;
truncate table rawdata_2012;
truncate table rawdata_2013;
truncate table rawdata_2014;
truncate table rawdata_2015;
truncate table rawdata_2016;
truncate table rawdata_2017;
truncate table rawdata_2018;
truncate table rawdata_2019;
truncate table AirCraftType;
truncate table RawData_MonthlyFlight_Summary;
truncate table RawData_MonthlyFlight_StockFuel_Summary;
truncate table All_AirlinesData;

\copy RawData_2010 from '2010_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2011 from '2011_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2012 from '2012_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2013 from '2013_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2014 from '2014_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2015 from '2015_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2016 from '2016_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2017 from '2017_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2018 from '2018_T100_Segment_All.csv' delimiter ',' CSV header;

\copy RawData_2019 from '2019_T100_Segment_All.csv' delimiter ',' CSV header;

\copy AircraftType from 'L_AIRCRAFT_TYPE.csv' delimiter ',' CSV header;

\copy RawData_MonthlyFlight_Summary from 'monthly_flight_data_summary_7_airlines.csv' delimiter ',' CSV header;

\copy RawData_MonthlyFlight_StockFuel_Summary from 'monthly_flight_stock_fuel_summary_7_airlines.csv' delimiter ',' CSV header;

insert into All_AirlinesData
select * from rawdata_2010
union all
select * from rawdata_2011
union all
select * from rawdata_2012
union all
select * from rawdata_2013
union all
select * from rawdata_2014
union all
select * from rawdata_2015
union all
select * from rawdata_2016
union all
select * from rawdata_2017
union all
select * from rawdata_2018
union all
select * from rawdata_2019
