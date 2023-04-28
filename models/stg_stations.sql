SELECT
    station_id, council_district,
    CASE
        WHEN property_type IN ('parkland', 'sidewalk', 'nonmetered_parking') THEN 'free_parking'
        ELSE property_type
    END AS property_type,
FROM
    `bigquery-public-data.austin_bikeshare.bikeshare_stations`
WHERE
    property_type IN ('parkland', 'sidewalk', 'nonmetered_parking', 'paid_parking')