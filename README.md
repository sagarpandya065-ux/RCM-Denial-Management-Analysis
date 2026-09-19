RCM Denial Management Analysis

## Project Overview

This project analyzes healthcare claim denial data using SQL, Excel, and Power BI.

The objective was to identify major denial patterns, payer-level denial exposure, appeal performance, and high-value denial opportunities.

The project simulates a US healthcare Revenue Cycle Management (RCM) environment.

## Tools Used

- SQL
- Microsoft Excel
- Power BI
- DAX
- Data Visualization
- Healthcare RCM / Denial Management concepts

## Dataset

The dataset contains 1,500 synthetic healthcare claims with the following fields:

- Claim_ID
- Payer
- Denial_Code
- Denial_Reason
- Denied_Amount
- Appeal_Status
- Days_To_Appeal

The dataset is synthetic and created for educational and portfolio purposes.
No real patient or confidential healthcare data is used.

## Key Analysis Performed

### SQL Analysis

Used SQL to analyze:

- Total denied amount by payer
- Denial volume by payer
- Denial amount by denial reason
- Denial code analysis
- Appeal status analysis
- High-value denial claims
- Appeal and recovery analysis
- Payer-level performance
- Denial reason performance

### Power BI Dashboard

<img width="1328" height="756" alt="image" src="https://github.com/user-attachments/assets/972f9429-4e32-4c27-92a3-e79bf8dea7ce" />


The dashboard includes:

- Total Denied Amount
- Total Denied Claims
- Appealed Claims
- Won Claims
- Appeal Win Rate
- Average Days to Appeal
- Denied Amount by Payer
- Denied Amount by Denial Reason
- Appealed vs Won Claims
- Appeal Win Rate by Payer
- Denial Volume by Denial Code
- Payer, Denial Reason and Appeal Status slicers

## Key Findings

- Total denied amount analyzed: approximately $11.19M
- Total denied claims: 1,500
- Appealed claims: 405
- Won claims: 287
- Appeal win rate: 70.9%
- Average days to appeal: approximately 23.3 days
- Coding Error and Eligibility were among the major denial categories by financial impact.
- Tricare and Molina showed high total denial exposure.
- A significant number of claims were not appealed, representing an opportunity for improved denial follow-up and appeal prioritization.

## Business Recommendations

Based on the analysis:

1. Strengthen front-end eligibility verification.
2. Perform regular coding quality audits.
3. Prioritize high-value denials for faster action.
4. Monitor payer-specific denial patterns.
5. Establish timely appeal tracking and escalation.
6. Analyze non-appealed claims to identify preventable revenue leakage.

## Project Outcome

This project demonstrates how SQL and Power BI can be used to convert raw RCM denial data into actionable business insights for denial management and revenue cycle improvement.
Lets connect on linkedin https://www.linkedin.com/in/sagar-p-010433143/
