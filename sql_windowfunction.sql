 //create a running total of standard_amt_usd over order time w.r.t the year and partition by that same year-truncated first occurred_at. //
 
 SELECT standard_amt_usd,
       DATE_TRUNC('year', occurred_at) as year,
       SUM(standard_amt_usd) OVER (PARTITION BY DATE_TRUNC('year', occurred_at) ORDER BY occurred_at) AS running_total
FROM orders