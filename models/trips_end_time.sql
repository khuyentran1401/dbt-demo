SELECT
    start_station_id,
    start_time,
    end_station_id,
    {{ get_end_time('start_time', 'duration_minutes') }} AS end_time
FROM
    `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE
    start_station_id IS NOT NULL AND end_station_id IS NOT NULL