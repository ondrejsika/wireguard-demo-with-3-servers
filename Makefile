help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "  make all"
	@echo "  make wg-install"
	@echo "  make wg-update"
	@echo "  make docker-demo-setup"

all:
	@make wg-install
	@make docker-demo-setup

wg-install:
	gobble run

wg-update:
	gobble run --only-tag config

docker-demo-setup:
	gobble run -c gobblefile-docker.yml
