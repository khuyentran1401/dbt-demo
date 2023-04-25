SELECT start_station_id
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
-- WHERE end_station_id is NOT NULL
WHERE start_station_id is NOT NULL