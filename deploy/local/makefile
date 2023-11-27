
deploy-local:
	@echo "Running tools..."
	docker compose --env-file .env up -d 

remove-deploy-local:
	@echo "Removing tools..."
	docker compose --env-file .env down --rmi all

migrate-run-seed:
	@echo "Running seed..."
	docker cp database/seeder/seeder.sql local-db-1:/seeder.sql && \
	docker exec -it local-db-1 psql -U postgres -d postgres -f /seeder.sql