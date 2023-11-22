/*Select the top/least 10, make and models that are regsitered EVs in WA .*/
-- SQL Query using BigQuery

--Top 10 Make & Models
SELECT
  make,
  model,
  COUNT(model) AS models_registered_in_wa
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY model, Make
ORDER BY COUNT(model) DESC
LIMIT 10
  
--Least 10 Make & Models
SELECT
  make,
  model,
  COUNT(model) AS models_registered_in_wa
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY model, Make
ORDER BY COUNT(model)
LIMIT 10
