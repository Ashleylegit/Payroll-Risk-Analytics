-- Overtime risk by department
SELECT
  Department,
  COUNT(*) AS high_risk_count
FROM payroll_risk_view
WHERE Overtime_Risk = 'HIGH RISK'
GROUP BY Department
ORDER BY high_risk_count DESC;

-- Estimated financial exposure
SELECT
  ROUND(SUM(
    CASE
      WHEN Overtime_Hours > 15
      THEN (Overtime_Hours - 15) * Hourly_Rate * 1.5
      ELSE 0
    END
  ), 2) AS estimated_overtime_exposure
FROM payroll;

-- Risk frequency summary
SELECT
  'Overtime Risk' AS risk_type,
  COUNT(*) AS count
FROM payroll_risk_view
WHERE Overtime_Risk = 'HIGH RISK'

UNION ALL

SELECT
  'Pay Variance Risk',
  COUNT(*)
FROM payroll_risk_view
WHERE Pay_Variance_Risk = 'HIGH RISK';
