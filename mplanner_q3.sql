--3. To find out the countries with the highest infection rates
select country_region,total_cases,dense_rank() over( order by total_cases desc) as infected_area_order from worldometer_data; 
