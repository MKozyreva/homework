{{
    config (
        engine='MergeTree()',
        order_by='C_CUSTKEY'
    )
}}
 
 SELECT * FROM {{ source('clickhouse_yc', 'customer' )}}
 