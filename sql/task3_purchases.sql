<<<<<<< HEAD
SELECT 
    a.client_id
FROM account a
JOIN transaction t ON a.id = t.account_id
WHERE t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'
  AND t.type = 'purchase'
GROUP BY a.client_id
HAVING SUM(t.amount) < 5000;
=======
sql<br>-- Задание 3: Покупки (без подзапросов и оконных функций)<br>-- Найти ID клиентов, у которых сумма покупок за последний месяц меньше 5000<br><br>SELECT <br> a.client_id<br>FROM account a<br>JOIN transaction t ON a.id = t.account_id<br>WHERE t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'<br> AND t.type = 'purchase'<br>GROUP BY a.client_id<br>HAVING SUM(t.amount) < 5000;<br>
>>>>>>> 6072b97515edcb726b5ff070f5e8b80f13f462a2
