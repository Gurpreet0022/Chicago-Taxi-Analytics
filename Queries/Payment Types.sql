-- Different payment types
SELECT
  payment_type,
  COUNT(*) AS trip_count
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE EXTRACT(YEAR FROM trip_start_timestamp) = 2022
GROUP BY payment_type
ORDER BY trip_count DESC;