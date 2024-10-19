SELECT
    Department,
    AVG(YearsSinceLastPromotion) AS AvgYearsSinceLastPromotion,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 AS AvgAttritionRate
FROM
    hr3
GROUP BY
    Department;