-- create a test to check if the item discount is always greater than 0
select
  *
from
  {{ref('fct_orders')}}
where
  item_discount_amount > 0
  -- if you change > to < and dbt test it will fail, tried on purpose to show it works
