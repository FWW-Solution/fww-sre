migrate-run-seed:
	@echo "Running seed..."
	docker cp database/seeder/seeder.sql local-dev-postgres-1:/seeder.sql && \
	docker exec -it local-dev-postgres-1 psql -U postgres -d postgres -f /seeder.sql