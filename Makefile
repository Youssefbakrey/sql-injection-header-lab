.PHONY: build up down clean logs shell db-shell exploit help

help:
	@echo "📋 Available commands:"
	@echo "  make build      - Build Docker images"
	@echo "  make up         - Start services"
	@echo "  make down       - Stop services"
	@echo "  make restart    - Restart services"
	@echo "  make clean      - Stop and remove volumes"
	@echo "  make logs       - View logs"
	@echo "  make shell      - Enter web container"
	@echo "  make db-shell   - Enter MySQL container"
	@echo "  make exploit    - Run exploit script"
	@echo "  make status     - Show service status"

build:
	docker-compose build

up:
	docker-compose up -d
	@echo "✅ Lab is running at http://localhost:8080"
	@echo "📊 MySQL is on port 3306"
	@echo "🔑 Password: root"

down:
	docker-compose down

restart: down up

clean:
	docker-compose down -v
	@echo "🧹 Cleaned up everything"

logs:
	docker-compose logs -f

shell:
	docker-compose exec web bash

db-shell:
	docker-compose exec db mysql -uroot -proot labdb

exploit:
	python3 exploit_sqli.py

status:
	docker-compose ps
