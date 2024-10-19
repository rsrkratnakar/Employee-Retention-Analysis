SELECT
    Department,
    AVG(TotalWorkingYears) AS AvgWorkingYears
FROM
    hr3
GROUP BY
    Department;