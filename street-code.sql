
select postcode,street,min(CASE WHEN paon::text ~ '^[0-9]+$'::text THEN paon ELSE NULL END),max( CASE WHEN paon::text ~ '^[0-9]+$'::text THEN paon ELSE NULL END) from sales group by postcode,street \g street-numeric.txt


