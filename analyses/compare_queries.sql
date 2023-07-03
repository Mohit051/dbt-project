{% set old_etl_relation=ref('dim_customer') %}

-- this is your newly built dbt model 
{% set dbt_relation=ref('fct_orders') %}

{{ audit_helper.compare_relations(
    a_relation=old_etl_relation,
    b_relation=dbt_relation,
    primary_key="order_id"
) }}