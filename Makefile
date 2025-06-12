.PHONY: build run clean rebuild

build:
	@echo "🐳 Building Docker image..."
	@docker compose build

run:
	@echo "🛠 Running API container..."
	@docker compose up -d

down:
	@echo "🧹 Stopping and removing container..."
	@docker composse down

up:
	@$(MAKE) build
	@$(MAKE) run

rebuild:
	@$(MAKE) down
	@$(MAKE) build
	@$(MAKE) run

test:
	@docker run --rm api pytest tests/

test-local:
	pytest tests/