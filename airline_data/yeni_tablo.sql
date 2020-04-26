\c airlines;

-- filtre eklenerek yeni tablo oluşturuldu
drop table if exists final_airlines_data;

SELECT departures_scheduled, departures_performed, payload, seats, passengers, freight, mail, distance,
ramp_to_ramp, air_time, unique_carrier, unique_carrier_name, origin_airport_id, origin, dest_airport_id,
dest, aircraft_type, year, quarter, month, is_overbooked
into final_airlines_data
FROM all_airlinesdata
where departures_scheduled>=departures_performed and
unique_carrier in ('AC','B6','BR','DL','LH','OZ','QF','SQ','UA','VS');

--yeni alan eklemeleri
alter table final_airlines_data add column seats_v1 integer,
				add column passengers_v1 integer,
				add column null_seats integer,
				add column null_seats_prop decimal,
				add column day_per_departures_perf decimal,
				add column distance_grouped integer;

--alan güncellemeleri
update final_airlines_data
set seats_v1=case when departures_performed=0 then 0 else round(seats/departures_performed,0) end,
	passengers_v1=case when departures_performed=0 then 0 else round(passengers/departures_performed,0) end;

update final_airlines_data
set null_seats=seats_v1-passengers_v1;

update final_airlines_data
set null_seats_prop=case when seats_v1=0 then 0 else cast((cast(null_seats as float)/cast(seats_v1 as float)) as numeric(25,2)) end;

update final_airlines_data
set day_per_departures_perf=round(departures_performed/30,2);

update final_airlines_data
set distance_grouped=case when distance_per_departures<=18.91 then 0
						  when distance_per_departures>18.91 and  distance_per_departures<=51 then 1
						  when distance_per_departures>51 and  distance_per_departures<=206.8 then 2
						  when distance_per_departures>206.8 and  distance_per_departures<=682 then 3
						  when distance_per_departures>682 then 4 end;
