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
WHERE  P_BRAND >= 'MFGR#2221' AND P_BRAND <= 'MFGR#2228' AND S_REGION = 'ASIA'
GROUP BY
    year,
    P_BRAND