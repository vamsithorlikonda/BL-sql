--Show the top 3 countries with the highest increase in confirmed cases over the last week.
select country_region,one_week_percent_increase from
covid_data
order by one_week_percent_increase desc
limit 3; 
