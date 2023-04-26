{% snapshot subscriber_type %}

{{
    config(
      target_schema='snapshots',
      unique_key='user_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

SELECT * FROM raw.subscriber_type

{% endsnapshot %}