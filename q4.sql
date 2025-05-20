--Get deaths_per_100cases and deaths_per_million from tables using leftjoin
select  c.country_region,c.deaths_per_100_cases,w.deaths_per_million
from covid_data c left join worldometer_data w on
c.country_region=w.country_region 
