# ==== Variables
# The name of the folder containing the pyproject.toml file:
app_name = francois
# The name of the folder containing the models.py file:
api = api
# The name of the container for commands to be run in:
container = francois

# exec = docker exec -it px-$(container)-1

exec = docker compose exec -T $(container)

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

# ==== Check / Lint Python
.PHONY: check-python-black
check-python-black: ## Check Python formatting with Black
	$(exec) black --check .

.PHONY: python-black
## Apply Python formatting with Black
python-black:
	$(exec) black .

.PHONY: check-python-isort
## Check Python imports are sorted correctly
check-python-isort:
	$(exec) isort --check .

.PHONY: python-isort
## Apply Python import sorting
python-isort:
	$(exec) isort .

.PHONY: check-python-flake8
## Check Python linting
check-python-flake8:
	$(exec) flake8 .

.PHONY: check-python-mypy
## Check Python type hints
check-python-mypy:
	$(exec) mypy .

.PHONY: check-python
## Run all Python checks
check-python: check-python-mypy check-python-flake8 check-python-isort check-python-black
	$(print-green) ✅ ${app_name} - All checks passed 👍 $(end)

# ==== Django
.PHONY: makemigrations
## Make Django migration files
makemigrations:
	$(exec) python manage.py makemigrations

.PHONY: migrate
## Apply Django migration files to database
migrate:
	$(exec) python manage.py migrate