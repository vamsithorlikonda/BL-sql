--5. Average number of deaths by day (Continents and Countries)
select country_region as country_wise,round(avg("deaths"),2) as "Avg_deaths" from covid_19_clean_complete
group by country_region
order  by "Avg_deaths" desc;