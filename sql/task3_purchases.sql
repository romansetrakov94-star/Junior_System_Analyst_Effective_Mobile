-- Задание 3: Покупки (без подзапросов и оконных функций)
-- Найти ID клиентов, у которых сумма покупок за последний календарный месяц меньше 5000

SELECT 
    a.client_id
FROM account a
JOIN transaction t ON a.id = t.account_id
WHERE t.transaction_date >= DATE_TRUNC('month', CURRENT_DATE - INTERVAL '1 month')
  AND t.transaction_date < DATE_TRUNC('month', CURRENT_DATE)
  AND t.type = 'purchase'
  AND a.close_dt IS NULL   -- счёт активен
GROUP BY a.client_id
HAVING SUM(t.amount) < 5000;
