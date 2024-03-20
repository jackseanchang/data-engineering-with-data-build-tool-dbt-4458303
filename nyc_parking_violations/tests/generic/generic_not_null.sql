{% test generic_not_null(model, column_name) %}

  SELECT *
  FROM {{ model }}
  where {{ column_name }} is null 

{% endtest %}