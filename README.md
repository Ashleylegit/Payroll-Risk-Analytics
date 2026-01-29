🔍 Fraud Detection Analytics Dashboard (SQL + Power BI)
📌 Project Overview

This project simulates a financial fraud detection system designed to identify high-risk transactions using SQL-based rule logic and interactive Power BI dashboards.

The goal is to detect suspicious behavior patterns, quantify potential financial exposure, and provide business stakeholders with actionable fraud insights through visualization.

🎯 Business Objectives

This project focuses on:

Identifying duplicate transaction activity

Detecting unusually large transaction amounts

Flagging off-hours transaction anomalies

Categorizing transactions by risk severity

Estimating total financial exposure related to fraud risk

Presenting insights through interactive dashboards

🛠 Tools & Technologies

SQLite — Data querying & fraud flag logic

SQL — View creation, aggregation, risk scoring

Microsoft Power BI — Dashboard design & KPI reporting

GitHub — Version control & portfolio hosting

📂 Dataset Overview

The dataset simulates financial transaction activity and includes the following fields:

Transaction ID

Transaction Date & Time

Transaction Amount

Vendor / Customer

Payment Method

Location

⚙ Fraud Detection Logic

Fraud risk was calculated using rule-based detection logic implemented in SQL views.

✅ Duplicate Transaction Detection

Flags transactions that share:

Same vendor

Same amount

Same timestamp

✅ Large Amount Detection

Identifies transactions exceeding a predefined high-value threshold to flag potential fraud risk.

✅ Time-Based Anomaly Detection

Flags transactions occurring outside standard business operating hours.

📊 Risk Scoring Model

Each transaction receives a risk score based on triggered fraud indicators.

Risk Level	Criteria
High Risk	2 or more fraud flags triggered
Medium Risk	1 fraud flag triggered
Low Risk	No fraud flags triggered
📈 Dashboard Features

The Power BI dashboard includes:

Total flagged transaction KPIs

Financial exposure summary

Risk level distribution charts

High-risk transaction tables

Department/vendor risk breakdowns

🖥 Dashboard Preview

(Insert your exported Power BI dashboard screenshot here)

screenshots/fraud_dashboard.png


Example:

💼 Business Value

This project demonstrates the ability to:

Build fraud detection logic using SQL

Create reusable analytical views

Design executive-level dashboards

Translate raw data into actionable insights

Support risk management decision-making

🚀 Future Improvements

Planned enhancements include:

Machine learning fraud prediction models

Real-time transaction streaming integration

Automated alert systems

Additional anomaly detection techniques

👤 Author

Asheka Baker
Data Analytics Portfolio Project
Power BI • SQL • Fraud Analytics
## Disclaimer

This project uses anonymized and simulated data for educational and portfolio purposes only. Findings are illustrative and do not represent any real organization.
