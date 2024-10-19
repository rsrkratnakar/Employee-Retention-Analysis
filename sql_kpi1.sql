create database kpis;
show tables;
select a.department, concat(format(avg(a.attrition_y)*100,2),'%') as attrition_rate from
(select 
department , attrition, 
CASE WHEN attrition = 'Yes' THEN 1
ELSE 0 END AS attrition_y from hr_1) as a  group by a.department ;
select*from hr_1;