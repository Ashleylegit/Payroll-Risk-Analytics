/* High Level Risk Counts*/

SELECT
  SUM(CASE WHEN Overtime_Hours > 15 THEN 1 ELSE 0 END) AS overtime_anomalies,
  SUM(CASE WHEN Deductions IS NULL OR Deductions = 0 THEN 1 ELSE 0 END) AS missing_deductions
FROM payroll;


/* Estimated Financial Impact*/

SELECT
  SUM(Overtime_Hours * Hourly_Rate * 1.5) AS estimated_overtime_exposure
FROM payroll
WHERE Overtime_Hours > 15;


/*Missing deductions Impact*/

SELECT
  SUM(Gross_Pay * 0.20) AS estimated_missing_deductions
FROM payroll
WHERE Deductions IS NULL OR Deductions = 0;

/*Errors by Department*/ 
SELECT
  Department,
  COUNT(*) AS error_count
FROM payroll
WHERE Overtime_Hours > 15
   OR Deductions IS NULL
   OR Deductions = 0
GROUP BY Department
ORDER BY error_count DESC;

/*Overtime by department*/

SELECT Department,
       COUNT(*) AS rows_count,
       AVG(Overtime_Hours) AS avg_ot,
       MAX(Overtime_Hours) AS max_ot
FROM payroll
GROUP BY Department
ORDER BY avg_ot DESC;


