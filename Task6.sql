/*Find the max and min range.*/
-- SQL Query using BigQuery

--Max Range
SELECT
  make, 
  model, 
  MAX(Electric_Range) AS max_range
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY make, model, Electric_Range
ORDER BY ROUND(avg(Electric_Range)) DESC
LIMIT 1

--Min Range
SELECT
  make, 
  model, 
  MIN(Electric_Range) AS min_range
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY make, model, Electric_Range
HAVING Electric_Range <> 0
ORDER BY ROUND(avg(Electric_Range)) 
LIMIT 1
