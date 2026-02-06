# Load environment variables from .env file if it exists
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

.PHONY: help compose

help:
	@echo "Available commands:"
	@echo "  make compose        - Run docker compose"

compose:
	@echo "Running docker compose..."
	@docker compose up -d --build