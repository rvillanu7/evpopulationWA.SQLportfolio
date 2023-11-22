/*Find the average range for the car least registered in WA.*/
-- SQL Query using BigQuery

/*Find the models least registered*/
SELECT 
  make,
  model,  
  COUNT(model) AS cnt_model
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY model, make
HAVING count(model)=1
ORDER BY make

/*Average Range of Model*/
SELECT
  make,
  model,
  AVG(Electric_Range) AS avg_range,
  COUNT(Model) AS cnt_model
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY make, model
HAVING count(model) = 1
ORDER BY make
