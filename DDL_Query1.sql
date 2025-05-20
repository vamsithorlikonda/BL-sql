CREATE TABLE covid_data (
    country_region VARCHAR(100),
    confirmed INT,
    deaths INT,
    recovered INT,
    active INT,
    new_cases INT,
    new_deaths INT,
    new_recovered INT,
    deaths_per_100_cases FLOAT,
    recovered_per_100_cases FLOAT,
    deaths_per_100_recovered FLOAT,
    confirmed_last_week INT,
    one_week_change INT,
    one_week_percent_increase FLOAT,
    who_region VARCHAR(100)
); 
