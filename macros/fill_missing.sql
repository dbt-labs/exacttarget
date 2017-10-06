{%- macro fill(from, desired_columns) -%}

  {%- set table_parts = from.split('.') -%}
  {%- set actual_columns = adapter.get_columns_in_table(*table_parts) -%}
  {%- set actual_column_names = actual_columns|map(attribute='name')|list -%}

  {%- for desired_column in desired_columns -%}
    {%- if not loop.first %}
, {% else %}
  {% endif -%}
    {%- if desired_column in actual_column_names -%}
      {{ desired_column }}
    {%- else -%}
      null as {{ desired_column }}
    {%- endif -%}
  {%- endfor -%}
{%- endmacro -%}
