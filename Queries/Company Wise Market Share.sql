
SELECT
  pickup_community_area,
  COUNT(*) AS total_trips,
  ROUND(AVG(fare), 2) AS avg_fare,
  ROUND(AVG(tips), 2) AS avg_tip,
  ROUND(AVG(trip_miles), 2) AS avg_distance
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  EXTRACT(YEAR FROM trip_start_timestamp) = 2022
  AND pickup_community_area IS NOT NULL
  AND fare > 0
GROUP BY pickup_community_area
ORDER BY total_trips DESC
LIMIT 10;