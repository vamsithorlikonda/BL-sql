#2. To find out the infected population percentage locally and globally

with Infected_local as (
    select 'USA' as Country_Region, 
           (sum(TotalCases) * 100.0 / sum(Population)) as Locally_infected_percentage 
    from worldometer_data
    where `Country_Region` = 'USA'
),
Infected_global as (
    select 
        (sum(TotalCases) * 100.0 / sum(Population)) as Globally_infected_percentage 
    from worldometer_data
    where `Country_Region` != 'USA'
)
select
    il.Locally_infected_percentage,
    ig.Globally_infected_percentage
from Infected_local il, Infected_global ig;
