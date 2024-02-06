//Which channel spent the most ? //

SELECT w.channel AS channel_name ,
       SUM(o.total_amt_usd) AS amt_spent
FROM orders o
JOIN accounts ac
ON o.account_id = ac.id 
JOIN web_events w
ON w.account_id = ac.id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

//Which sales representative had the most orders? or least orders? How many orders did they have?//

SELECT s.name AS sales_rep,
       COUNT(o.total) AS num_of_orders
FROM sales_reps s
JOIN accounts ac
ON s.id = ac.sales_rep_id 
JOIN orders o
ON ac.id = o.account_id 
GROUP BY 1
ORDER BY 1 DESC 
LIMIT 1;  ------> sales_rep with the most orders

SELECT s.name AS sales_rep,
       COUNT(o.total) AS num_of_orders
FROM sales_reps s
JOIN accounts ac
ON s.id = ac.sales_rep_id 
JOIN orders o
ON ac.id = o.account_id 
GROUP BY 1
ORDER BY 1 ASC 
LIMIT 1; ------> sales_rep with the least orders




