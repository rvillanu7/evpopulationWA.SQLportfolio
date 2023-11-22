/*Select the Make & Model of the first EV registered to Washington State
as well as the Make Model that is most registered with model_year =  2024.*/
-- SQL Query using BigQuery


--Make & Model of the first EV registered to Washington State--

SELECT
make, 
model, 
model_year
FROM
`celestial-feat-399513.evpop.electric_vehicle_pop`
ORDER BY model_year
LIMIT 1

--Make of the MAX registered EV in Washington with Model_Year=2024--

SELECT
  DISTINCT(Make),
  COUNT(Make) AS amt_make
FROM  
  `celestial-feat-399513.evpop.electric_vehicle_pop`
WHERE Model_year=2024
GROUP BY Make
ORDER BY amt_make DESC
LIMIT 3

--Model of the BMW most registered in Washington with Model_Year=2024--
SELECT
make, 
MAX(model) AS most_registered_in_2024
FROM `celestial-feat-399513.evpop.electric_vehicle_pop`
WHERE make = "BMW" AND Model_Year=2024
GROUP BY make
