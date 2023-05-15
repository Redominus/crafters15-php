UID := $(shell id -u)
GID := $(shell id -g)
	export UID GID

.PHONY: install
install:
	docker compose up -d --build --remove-orphans
	docker compose stop
	docker compose run app composer install

.PHONY: run-fixture
days ?= 10
run-fixture:
	docker compose run app php fixtures/texttest_fixture.php $(days)
.PHONY: tests
tests:
	docker compose run app composer tests
.PHONY: test-coverage
test-coverage:
	docker compose run -e XDEBUG_MODE=coverage app composer test-coverage
.PHONY: check-cs
check-cs:
	docker compose run app composer check-cs
.PHONY: fix-cs
fix-cs:
	docker compose run app composer fix-cs
.PHONY: phpstan
phpstan:
	docker compose run app composer phpstan
