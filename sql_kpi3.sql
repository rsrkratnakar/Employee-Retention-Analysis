SELECT
    Department,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0.0 END) * 100 AS AttritionRate,
    AVG(MonthlyIncome) AS AvgMonthlyIncome
FROM kpis.hr3
GROUP BY Department;
