{{ config(
    severity = 'warn'
)}}

select
    order_id, 
    avg(payment_amount) as average_amount
from {{ ref('stg_payments') }}
group by 1
having count(order_id) > 1 and average_amount < 1