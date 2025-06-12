.PHONY: build run clean rebuild

build:
	@echo "🐳 Building Docker image..."
	@docker compose build

run:
	@echo "🛠 Running API container..."
	@docker compose up -d

down:
	@echo "🧹 Stopping and removing container..."
	@docker compose down

up:
	@$(MAKE) build
	@$(MAKE) run

rebuild:
	@$(MAKE) down
	@$(MAKE) build
	@$(MAKE) run

test:
	@docker compose run --rm test


test-local:
	PYTHONPATH=./ pytest tests/
