SELECT
    Gender,
    AVG(HourlyRate) AS Avg_Hourly_Rate
FROM kpis.hr_1
WHERE Gender = 'Male' AND JobRole = 'Research Scientist'
GROUP BY Gender;