.PHONY: up down shell logs odoodb

CLINE = docker exec -i psql13

up:
	@docker-compose up --remove-orphan --build -d

down:
	@docker-compose down

shell:
	@docker exec -it odoo11 sh

logs:
	@docker-compose logs --timestamps --follow

odoodb:
	@$(CLINE) psql "postgresql://postgres:SQL085bc2@psql13:5432" -c "CREATE USER odoo WITH PASSWORD 'odoo';"
	@$(CLINE) psql "postgresql://postgres:SQL085bc2@psql13:5432" -c "CREATE DATABASE odoo OWNER odoo;"
