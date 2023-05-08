SELECT
    property_type,
    council_district,
    COUNT(*) AS stations
FROM
    {{ ref('stg_stations') }}
GROUP BY
    property_type,
    council_district