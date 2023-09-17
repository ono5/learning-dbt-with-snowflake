.PHONY: debug run refresh seed compile freshness snapshot test per_test

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
	dbt test --select ${key}
