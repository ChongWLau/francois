# ==== Build, Up, Down
.PHONY: build
## Build docker containers
build:
	docker compose build

.PHONY: up
## Bring docker containers up and running
up:
	docker compose up

.PHONY: up.detached
## Bring docker containers up and running in background
up.detached:
	docker compose up -d

.PHONY: down
## Bring docker containers down
down:
	docker compose down