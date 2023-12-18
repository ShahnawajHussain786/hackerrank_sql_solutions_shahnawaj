SELECT c.Company_Code, c.founder, COUNT(DISTINCT e.Lead_Manager_Code), COUNT(DISTINCT e.Senior_Manager_Code), 
COUNT(DISTINCT e.Manager_Code), COUNT(DISTINCT e.employee_Code) 
FROM Company c
JOIN Employee e ON c.Company_Code =e.Company_Code 
GROUP BY c.Company_Code, c.Founder
ORDER BY c.COMpany_Code;