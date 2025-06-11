.PHONY: build run clean rebuild

build:
	@echo "🐳 Building Docker image..."
	@docker build -t api .

run:
	@echo "🛠 Running API container..."
	@docker run -d -p 8000:80 --name api api

down:
	@echo "🧹 Stopping and removing container..."
	@docker stop api
	@docker rm api

up:
	@$(MAKE) build
	@$(MAKE) run

rebuild:
	@$(MAKE) down
	@$(MAKE) build
	@$(MAKE) run