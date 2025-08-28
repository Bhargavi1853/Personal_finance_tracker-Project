SELECT `monthlybalances`.`user_id`,
    `monthlybalances`.`full_name`,
    `monthlybalances`.`month`,
    `monthlybalances`.`total_income`,
    `monthlybalances`.`total_expenses`,
    `monthlybalances`.`net_balance`
FROM `personal_finance_tracker`.`monthlybalances`;
