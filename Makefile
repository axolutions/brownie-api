db:
ifeq ($(RUNNING_DB), my_postgres)
	docker start my_postgres
else
	docker run --name my_postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres:16.2-alpine
endif
