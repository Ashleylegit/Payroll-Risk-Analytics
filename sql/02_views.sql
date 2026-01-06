-- Payroll Risk View

DROP VIEW IF EXISTS payroll_risk_view;

CREATE VIEW payroll_risk_view AS
SELECT
  Employee_ID,
  Department,
  Pay_Period,
  Regular_Hours,
  Overtime_Hours,
  Hourly_Rate,
  Gross_Pay,
  Deductions,
  Pay_Variance,

  CASE
    WHEN Overtime_Hours > 15 THEN 'HIGH RISK'
    ELSE 'Normal'
  END AS Overtime_Risk,

  CASE
    WHEN ABS(Pay_Variance) > 100 THEN 'HIGH RISK'
    ELSE 'Normal'
  END AS Pay_Variance_Risk

FROM payroll;
