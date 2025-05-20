#6. Average of cases divided by the number of population of each country (TOP 10)
select Country_Region,TotalCases,Population,(TotalCases*100/Population) as Infected_percentage
from worldometer_data
limit 10;