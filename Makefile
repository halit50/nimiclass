# Variables
DOCKER_COMPOSE = docker compose
DOCKER_EXEC = $(DOCKER_COMPOSE) exec php
SYMFONY = php bin/console
COMPOSER = composer

# Couleurs
CYAN = \033[0;36m
GREEN = \033[0;32m
RESET = \033[0m

## —— 🎵 🐳 Docker ——
start: ## Démarrer les conteneurs
	@echo "$(CYAN)Démarrage des conteneurs...$(RESET)"
	$(DOCKER_COMPOSE) up -d

stop: ## Arrêter les conteneurs
	@echo "$(CYAN)Arrêt des conteneurs...$(RESET)"
	$(DOCKER_COMPOSE) stop

restart: stop start ## Redémarrer les conteneurs

bash: ## Ouvrir un terminal dans le conteneur PHP
	@echo "$(CYAN)Ouverture du terminal...$(RESET)"
	$(DOCKER_EXEC) bash

yarn: ## Exécute yarn
	$(DOCKER_EXEC) yarn

yarn-install: ## Installe les dépendances yarn
	$(DOCKER_EXEC) yarn install

yarn-dev: ## Lance webpack en mode dev
	$(DOCKER_EXEC) yarn dev

yarn-watch: ## Lance webpack en mode watch
	$(DOCKER_EXEC) yarn watch

yarn-build: ## Build pour la prod
	$(DOCKER_EXEC) yarn build
