-- filtre eklenerek yeni tablo oluşturuldu
drop table if exists final_airlines_data;

SELECT departures_scheduled, departures_performed, payload, seats, passengers, freight, mail, distance,
ramp_to_ramp, air_time, unique_carrier, unique_carrier_name, origin_airport_id, origin, dest_airport_id,
dest, aircraft_type, year, quarter, month
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
								add column distance_grouped integer,
                				add column is_overbooked integer;

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
set distance_grouped=case when distance<=499 then 0
						  when distance>499 and  distance<=849 then 1
						  when distance>849 and  distance<=1229 then 2
						  when distance>1229 and  distance<=2000 then 3
						  when distance>2000 then 4 end;

update final_airlines_data
set is_overbooked=case when null_seats_prop>.20 then 1
				else
					case when null_seats_prop between .07 and .12 then
						case when day_per_departures_perf>1 and day_per_departures_perf<=2 and distance>=3 then 1
							 when day_per_departures_perf>2 and day_per_departures_perf<=3 and distance>=2 then 1
							 when day_per_departures_perf>3 then 1
							 else 0 end
						 when null_seats_prop between .13 and .20 then
						case when day_per_departures_perf<1 and distance>=3 then 1
							 when day_per_departures_perf<=2 and distance>=2 then 1
							 when day_per_departures_perf<3 then 1
							 else 0 end
						 else 0 end end;
