--4. To find out the countries and continents with the highest death counts
select country_region,continent,total_deaths from worldometer_data
where total_deaths is not null
order by total_deaths desc; 
