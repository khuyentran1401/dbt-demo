WITH stations AS (
  SELECT * FROM {{ ref('stg_stations') }}
),
trips AS (
  SELECT * FROM {{ ref('stg_trips') }}
)
SELECT stations.property_type, COUNT(*) AS trips,
FROM trips
JOIN stations 
ON trips.start_station_id = stations.station_id
GROUP BY stations.property_type