{{
    config (
        engine='MergeTree()',
        order_by='S_SUPPKEY'
    )
}}
 
 SELECT * FROM {{ source('clickhouse_yc', 'supplier' )}}