SELECT
    Department,
    JobRole,
    SUM(CASE WHEN WorkLifeBalance = 1 THEN 1 ELSE 0 END) AS Excellent,
    SUM(CASE WHEN WorkLifeBalance = 2 THEN 1 ELSE 0 END) AS Good,
    SUM(CASE WHEN WorkLifeBalance = 3 THEN 1 ELSE 0 END) AS Average,
    SUM(CASE WHEN WorkLifeBalance = 4 THEN 1 ELSE 0 END) AS Poor,
    COUNT(*) AS GrandTotal
FROM
    hr3
GROUP BY
    Department, JobRole;