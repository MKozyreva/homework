{{
    config (
       order_by=['year', 'P_BRAND']
    )
}}

SELECT
    sum(LO_REVENUE) as revenue,
    toYear(LO_ORDERDATE) AS year,
    P_BRAND as brand
FROM {{ ref('lineorder_flat' )}}
WHERE  P_BRAND = 'MFGR#2239' AND S_REGION = 'EUROPE'
GROUP BY
    year,
    P_BRAND