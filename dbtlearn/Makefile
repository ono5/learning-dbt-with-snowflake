.PHONY: debug run refresh seed compile freshness snapshot test per_test deps refresh docs serve

debug:
	dbt debug

run:
	dbt run

refresh:
	dbt run --full-refresh

seed:
	dbt seed

compile:
	dbt compile

freshness:
	dbt source freshness

snapshot:
	dbt snapshot

test:
	dbt test

per_test:
	# make per_test key=dim_listings_cleansed
	# dbt test --select dim_listings_cleansed
	dbt test --select ${key}

deps:
	dbt deps

refresh:
	# dbt run --full-refresh fct_review
	# dbt run --full-refresh
	dbt run --full-refresh ${materialize}

docs:
	dbt docs generate

serve:
	dbt docs serve
