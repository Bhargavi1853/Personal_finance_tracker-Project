use personal_finance_tracker;

SELECT 
    user_id,
    DATE_FORMAT(expense_date, '%Y-%m') AS month,
    SUM(amount) AS total_expenses,
    COUNT(*) AS number_of_transactions
FROM Expenses
GROUP BY user_id, DATE_FORMAT(expense_date, '%Y-%m')
ORDER BY user_id, month;

-- Category-wise spending for each user
-- Category-wise expense percentage
SELECT 
    e.user_id,
    c.category_name,
    SUM(e.amount) AS total_spent,
    ROUND(SUM(e.amount) * 100.0 / (SELECT SUM(amount) FROM Expenses WHERE user_id = e.user_id), 2) AS percent_of_total
FROM Expenses e
JOIN Categories c ON e.category_id = c.category_id
GROUP BY e.user_id, c.category_name
ORDER BY e.user_id, total_spent DESC;


-- Income vs Expense summary report

SELECT 
    u.full_name,
    m.month,
    COALESCE(i.total_income, 0) AS income,
    COALESCE(e.total_expense, 0) AS expense,
    COALESCE(i.total_income, 0) - COALESCE(e.total_expense, 0) AS balance
FROM Users u
LEFT JOIN (
    SELECT user_id, DATE_FORMAT(income_date, '%Y-%m') AS month, SUM(amount) AS total_income
    FROM Income
    GROUP BY user_id, DATE_FORMAT(income_date, '%Y-%m')
) i ON u.user_id = i.user_id
LEFT JOIN (
    SELECT user_id, DATE_FORMAT(expense_date, '%Y-%m') AS month, SUM(amount) AS total_expense
    FROM Expenses
    GROUP BY user_id, DATE_FORMAT(expense_date, '%Y-%m')
) e ON u.user_id = e.user_id AND i.month = e.month
LEFT JOIN (
    SELECT DISTINCT DATE_FORMAT(expense_date, '%Y-%m') AS month FROM Expenses
    UNION
    SELECT DISTINCT DATE_FORMAT(income_date, '%Y-%m') AS month FROM Income
) m ON m.month = COALESCE(i.month, e.month)
ORDER BY u.full_name, m.month;




SELECT user_id, category_id, SUM(amount) AS total_spent
FROM Expenses
GROUP BY user_id, category_id
ORDER BY user_id, total_spent DESC
LIMIT 3;


SELECT u.full_name, SUM(e.amount) AS total_expenses
FROM Users u
JOIN Expenses e ON u.user_id = e.user_id
GROUP BY u.full_name
ORDER BY total_expenses DESC
LIMIT 1;


SELECT user_id, AVG(monthly_expense) AS avg_monthly_expense
FROM (
    SELECT user_id, DATE_FORMAT(expense_date, '%Y-%m') AS month, SUM(amount) AS monthly_expense
    FROM Expenses
    GROUP BY user_id, DATE_FORMAT(expense_date, '%Y-%m')
) t
GROUP BY user_id;


SELECT user_id, expense_date, SUM(amount) AS total_expense
FROM Expenses
WHERE expense_date >= CURDATE() - INTERVAL 7 DAY
GROUP BY user_id, expense_date
ORDER BY expense_date;


SELECT u.full_name, 
       SUM(i.amount) AS total_income, 
       SUM(e.amount) AS total_expense, 
       (SUM(i.amount) - SUM(e.amount)) AS net_balance
FROM Users u
LEFT JOIN Income i ON u.user_id = i.user_id
LEFT JOIN Expenses e ON u.user_id = e.user_id
GROUP BY u.full_name
HAVING net_balance < 0;


