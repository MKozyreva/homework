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
WHERE P_CATEGORY = 'MFGR#12' AND S_REGION = 'AMERICA'
GROUP BY
    year,
    P_BRAND