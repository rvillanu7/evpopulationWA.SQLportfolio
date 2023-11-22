/*Find the average range for the car most registered in WA.*/
-- SQL Query using BigQuery

/*Find the Model most registered*/
SELECT 
  make,
  model,  
count(model) AS cnt_model
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
group by model, make
order by count(model) DESC
LIMIT 1

/*Average Range of Model*/
SELECT
  make,
  model, 
  AVG(Electric_Range) AS average_range
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
WHERE model = "MODEL Y"
GROUP BY make, model, electric_range
LIMIT 1
