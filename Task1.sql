/*Select the top 10 Counties/Cities with EVs resgitered in WA.*/
-- SQL Query using BigQuery 

--County  
SELECT
  county,
  COUNT(county) AS amt_of_cars
FROM
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY county
ORDER BY COUNT(county) DESC
LIMIT 10

--City
SELECT 
  city,
  COUNT(City) AS Count
FROM 
  `celestial-feat-399513.evpop.electric_vehicle_pop`
GROUP BY City
ORDER BY COUNT(City) DESC 
LIMIT 10
