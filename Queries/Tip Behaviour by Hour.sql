
SELECT
  EXTRACT(HOUR FROM trip_start_timestamp) AS hour_of_day,
  COUNT(*) AS total_trips,
  ROUND(AVG(tips), 2) AS avg_tip_amount,
  ROUND(AVG(SAFE_DIVIDE(tips, fare) * 100), 1) AS avg_tip_percentage
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  EXTRACT(YEAR FROM trip_start_timestamp) = 2022
  AND fare > 0
  AND payment_type = 'Credit Card'
GROUP BY hour_of_day
ORDER BY hour_of_day;