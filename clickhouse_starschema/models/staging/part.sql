{{
     config (
        engine='MergeTree()',
        order_by='P_PARTKEY'
     )
}}

 SELECT * FROM {{ source('clickhouse_yc', 'part' )}}