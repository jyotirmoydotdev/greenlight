POSTGRES_CONTAINER=postgres

postgres-start:
	docker start $(POSTGRES_CONTAINER)

postgres-stop:
	docker stop $(POSTGRES_CONTAINER)

postgres-restart:
	docker restart $(POSTGRES_CONTAINER)

postgres-status:
	docker ps -a --filter name=$(POSTGRES_CONTAINER)

postgres-logs:
	docker logs $(POSTGRES_CONTAINER)

postgres-logs-follow:
	docker logs -f $(POSTGRES_CONTAINER)

postgres-shell:
	docker exec -it $(POSTGRES_CONTAINER) psql -U postgres -d $(POSTGRES_CONTAINER)
