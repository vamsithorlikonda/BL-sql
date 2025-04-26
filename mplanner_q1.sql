WITH global_stats AS (
    SELECT 
        SUM("deaths") AS global_deaths,
        SUM("confirmed") AS global_confirmed
    FROM country_wise_lastest
),
usa_stats AS (
    SELECT 
        SUM("Deaths") AS usa_deaths,
        SUM("Confirmed") AS usa_confirmed
    FROM usa_country_wise
),
local_stats AS (
    SELECT 
        (g.global_deaths - u.usa_deaths) AS local_deaths,
        (g.global_confirmed - u.usa_confirmed) AS local_confirmed
    FROM global_stats g, usa_stats u
)
SELECT 
    (local_stats.local_deaths::decimal / NULLIF(local_stats.local_confirmed, 0)) * 100 AS local_death_percentage,
    (g.global_deaths::decimal / NULLIF(g.global_confirmed, 0)) * 100 AS global_death_percentage
FROM 
    local_stats,
    global_stats g;
