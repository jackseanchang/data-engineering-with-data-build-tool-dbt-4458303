{{ config(severity = 'warn')}}
SELECT
    violation_code,
    SUM(fee_usd) AS total_revenue_usd
FROM
    {{ref('staging_violation_codes')}}
GROUP BY
    violation_code
HAVING
    NOT(total_revenue_usd >= 1)