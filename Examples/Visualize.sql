-- Databricks notebook source
SELECT state_id AS state, COUNT(zip) AS nzips
FROM uszips_delta_unmanaged
where state_id NOT IN ('AS', 'GU', 'MP', 'PR', 'VI')
GROUP BY state 
ORDER BY nzips

-- COMMAND ----------

SELECT state_id AS state, SUM(population) AS population
FROM uszips_delta_unmanaged
where state_id NOT IN ('AS', 'GU', 'MP', 'PR', 'VI')
GROUP BY state 
ORDER BY state
