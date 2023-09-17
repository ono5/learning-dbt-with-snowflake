{% macro no_nulls_in_columns(model) %}
  select * from {{ model }} where
  {# https://docs.getdbt.com/reference/dbt-jinja-functions/adapter#get_columns_in_relation #}
  {% for col in adapter.get_columns_in_relation(model) -%}
		{{ col.column }} IS NULL OR
  {% endfor %}
	FALSE
{% endmacro %}
