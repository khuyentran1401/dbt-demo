{% macro get_end_time(start_time, duration_minutes) %}
    (SELECT TIMESTAMP_ADD({{ start_time }}, INTERVAL {{ duration_minutes }} MINUTE) AS end_time)
{% endmacro %}