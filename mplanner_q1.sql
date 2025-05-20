#To find out the death percentage locally and globally

with local_per as (
select (Deaths * 100/Confirmed) as local_death_percentage from country_wise_latest
where `Country/Region`='US'
),
global_per as (
select `Country/Region`,(Deaths * 100/Confirmed) as global_death_percentage from country_wise_latest
where `Country/Region`!='US'
)

select * from global_per,local_per;

