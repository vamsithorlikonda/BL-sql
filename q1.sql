--Find the top 5 countries with the highest total number of deaths per million population.
select country_region,deaths_per_million from worldometer_data
where deaths_per_million is not null
order by deaths_per_million desc
limit 5; 
