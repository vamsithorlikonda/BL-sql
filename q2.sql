--List countries where the recovery rate is greater than 90%, and their corresponding WHO region.
select country_region,recovered_per_100_cases,who_region from covid_data
where recovered_per_100_cases > 90
order by recovered_per_100_cases desc;
