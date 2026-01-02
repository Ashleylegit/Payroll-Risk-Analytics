# Payroll-Risk-Analytics
Payroll Risks Findings
# Payroll Risk Analytics

## Project Overview

This project focuses on **payroll audit and risk analysis** using SQL. The objective is to identify payroll-related risks, validate internal controls, and quantify potential financial exposure. While the original concept was designed for Excel-based analysis, the project was executed in **SQLite using SQL**, demonstrating that the same analytical objectives can be achieved more reliably and scalably in a database environment.

The analysis mirrors real-world payroll audit work: testing controls, identifying anomalies, and clearly communicating findings to decision-makers.

---

## Analysis Objectives

The project was designed to address the following objectives:

* Identify **overtime anomalies** that may indicate policy violations or cost leakage
* Test for **duplicate employee payments** to validate payroll controls
* Flag **pay variance risks** where actual pay deviates from expected calculations
* Validate **deduction completeness** across payroll records

Importantly, where no issues were found (duplicates, missing deductions), results are reported as **control tests passed**, reflecting real audit practice.

---

## Tools & Technologies

* **SQLite** – lightweight relational database engine
* **SQL** – data analysis, risk logic, and control testing
* **DB Browser for SQLite** – query execution and data inspection
* **Excel (CSV export only)** – source data preparation and optional visualization

---

## Data Description

The dataset represents payroll records with fields including:

* Employee ID
* Department
* Pay period
* Regular hours and overtime hours
* Hourly rate
* Gross pay, deductions, net pay
* Calculated pay variance

All analysis was performed on a cleaned payroll table imported from Excel into SQLite.

---

## Key Analyses Performed

### 1. Overtime Anomaly Detection

Overtime records exceeding a defined threshold were flagged as **HIGH RISK**, highlighting potential policy violations and cost exposure.

### 2. Duplicate Payment Testing

Employee payments were tested for duplicates by employee and pay period. No duplicate payments were identified, indicating effective payroll controls.

### 3. Pay Variance Risk Analysis

Differences between expected and actual pay were analyzed. Variances exceeding tolerance thresholds were flagged as **HIGH RISK** for further review.

### 4. Deduction Validation

Payroll records were tested for missing or zero deductions. No missing deductions were identified, confirming compliance in this control area.

---

## Risk Logic Implementation

Risk classification was implemented using SQL `CASE` logic within a reusable database **VIEW**, separating raw data from analytical logic. This approach reflects professional analytics and audit best practices.

Risk categories include:

* **HIGH RISK** – records exceeding defined overtime or pay variance thresholds
* **Normal** – records within expected policy and calculation limits

---

## Outputs

The project produces the following outputs:

* **Payroll Risk View** – a SQL view classifying each record by risk level
* **Estimated Financial Impact** – quantified exposure from excessive overtime and pay variances
* **Error / Risk Frequency Analysis** – aggregation of risk counts by department and period

Summary outputs are exported as CSV files for reporting or visualization.

---

## Key Findings

* Overtime risk is concentrated within specific departments, indicating opportunities for targeted management review
* Estimated financial exposure is driven primarily by excessive overtime rather than payroll system errors
* Duplicate payments and missing deductions were not present, demonstrating effective existing controls

---

## Skills Demonstrated

* Payroll compliance and audit-style control testing
* Financial accountability and exposure estimation
* SQL-based risk analysis and data validation
* Clear separation of raw data and analytical logic
* Attention to detail and professional reporting

---

## Next Steps

Potential extensions of this project include:

* Visual dashboards (Power BI or Excel) built from SQL outputs
* Integration with transaction fraud detection analysis
* Expansion into privacy and compliance risk assessments

---

## Disclaimer

This project uses anonymized and simulated data for educational and portfolio purposes only. Findings are illustrative and do not represent any real organization.
