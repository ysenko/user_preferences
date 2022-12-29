.PHONY: setup
setup:
	poetry install

.PHONY: bandit
bandit:
	poetry run bandit -r --format html -o bandit_report.html preferences

.PHONY: set_env
set_env:
	@echo "========== Run the following commands in terminal =========="
	export DJANGO_SECRET_KEY="django-insecure-ysci11#m@cw#(cmpl8+w7t(-)*5hjop8i=9&s#@l@3i7)=(+m%"
	@echo "============================================================"