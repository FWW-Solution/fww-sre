
deploy-production:
	@echo "Running tools..."
	sudo docker compose --env-file .env up -d 

remove-deploy-production:
	@echo "Removing tools..."
	sudo docker compose --env-file .env down --rmi all

migrate-run-seed:
	@echo "Running seed..."
	docker cp database/seeder/seeder.sql production-db-1:/seeder.sql && \
	docker exec -it production-db-1 psql -h ${DB_DSN} -f /seeder.sql