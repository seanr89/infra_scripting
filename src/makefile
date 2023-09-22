TERRAFORM_VERSION = 0.7.3

TERRAFORM_BIN = docker run -it --rm -v "$(PWD)":/data sjourdan/terraform:$(TERRAFORM_VERSION)
.DEFAULT_GOAL := help

env = dev

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m   %s\n", $$1, $$2}'

install: ## Install npm dependencies for the api, admin, and frontend apps
	@echo "Installing Node dependencies"
	@npm install

terraform-fmt: ## More items
	@echo "TF formatting" 

restart-frontend: ## Restart the frontend and admin apps in dev
	@make terraform-fmt && make install
	@echo "Frontend app restarted"

init: ## Initialize terraform
	terraform init

script:	## Run the script
	@bash ./run_script.sh

params: ## handle params
	@echo "TF formatting $(arg1)"

sbx1: ## handle param editing
	$(eval env=sbx1)
	@echo "TF formatting $(env)"