--Compare the testing rate (tests per million) and case rate (cases per million) for each continent.
SELECT 
    continent,
    ROUND(AVG(total_cases_per_million)::numeric, 2) AS avg_cases,
    ROUND(AVG(tests_per_million)::numeric, 2) AS avg_tests
FROM worldometer_data
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY continent DESC;
 
