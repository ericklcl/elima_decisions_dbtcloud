{% do log("Criacao do SRC_CUSTOMER", info=True) %}

select
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,
    c_mktsegment,
    c_comment
from
    {{ source("snowflake_sample", "raw_customer") }}

    {% do log("Criacao do SRC_CUSTOMER concluida", info=True) %}
