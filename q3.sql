--For each WHO region, calculate the total number of confirmed cases and total deaths. Sort by confirmed cases descending.
select sum(confirmed) as total_confirmed,sum(deaths) as total_deaths,who_region from covid_data
group by who_region
order by total_confirmed desc; 
