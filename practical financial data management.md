# Personal Finance Tracker (SQL Project)

## Introduction
Managing personal finances is essential in everyday life. A structured database system helps users track income, expenses, and overall balance effectively.  
This project was designed to provide insights into financial health using **SQL queries and database management principles**.

## Abstract
This project focuses on building a **normalized SQL database schema** to manage personal finances.  
It categorizes income and expenses, calculates balances, and generates meaningful insights through queries and views.  
It demonstrates **normalization, joins, aggregate functions, and reporting capabilities** in SQL.

## Tools Used
- MySQL – Database Management  
- dbdiagram.io – ER Diagram Design  
- SQL Workbench – Query Execution & Reporting  

##  Steps Involved
1. **Database Schema Design**  
   - Entities: Users, Categories, Income, Expenses, Balance  
   - Normalized schema up to **3NF** using dbdiagram.io  

2. **Table Creation (DDL)**  
   - Primary & Foreign Keys for relationships  
   - Constraints (`CHECK`, `NOT NULL`, `UNIQUE`) for data integrity  

3. **Data Population (DML)**  
   - Inserted **70+ rows** of realistic financial data  
   - Categories: Salary, Freelance, Investments, Food, Rent, Shopping, etc.  
   - Multiple payment methods: Cash, Card, UPI

<img width="619" height="552" alt="Screenshot 2025-08-28 161457" src="https://github.com/user-attachments/assets/836e6bfd-3130-45b3-a02f-a4cb509371b9" />


4. **Analytical SQL Queries**  
   - Monthly expense summaries (`GROUP BY`)  
   - Category-wise spending analysis  
   - Users spending more than their income  
   - Aggregate functions: `SUM`, `AVG`, `COUNT`
  
    <img width="912" height="761" alt="Screenshot 2025-08-28 161627" src="https://github.com/user-attachments/assets/8e56b85a-c622-4e03-834f-0eab64376e13" />


5. **Views for Balance Tracking**  
   - `UserBalance` → income, expenses, net balance per user  
   - `MonthlyBalance` → month-wise balance tracking

  <img width="632" height="542" alt="Screenshot 2025-08-28 162043" src="https://github.com/user-attachments/assets/f5e880fa-8cc4-4432-934d-c4c31e4099a6" />


6. **Report Generation & Export**  
   - Exported results to CSV/Excel/PDF  
   - Reports included:  
     - Income vs Expenses per month  
     - Net Balance trends  
     - Top categories of spending
    
     <img width="1135" height="793" alt="Screenshot 2025-08-28 155013" src="https://github.com/user-attachments/assets/b5396978-b5b8-423f-bc87-33d56e7a1744" />
     
## dbdiagram Description
<img width="720" height="520" alt="$RK3ZRIV" src="https://github.com/user-attachments/assets/c13a2e71-927e-4c60-9858-79bda400f8df" />


This ER diagram represents the Personal Finance Tracker Database.

It models key entities required to track user finances, including Users, Categories, Income, Expenses, and Balance.

   - Users: Stores personal details of each user.

   - Categories: Defines income and expense categories.

   - Income: Records income transactions linked to users and categories.

   - Expenses: Records expense transactions with payment methods.

   - Balance: Summarizes total income, expenses, and net balance per user.

The diagram was created using dbdiagram.io to visualize relationships, enforce normalization (3NF), and ensure referential integrity between tables.

## Conclusion
The project demonstrates how SQL databases can be applied to real-life finance management.  
It strengthened knowledge in:  
- Database normalization (3NF)  
- Joins & aggregate functions  
- Views for simplified reporting  
- Exporting reports for usability  

Overall, the Personal Finance Tracker project not only improved SQL query and database design skills but also provided **practical financial data management experience** useful for real-world applications and interviews.
