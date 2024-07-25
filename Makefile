image:         ## Build the docker image
	docker build --no-cache -t sitech-logs .

services:      ## Creates necessary services for development
	docker-compose -f ./devops/docker-compose.services.yml up --force-recreate

services-d:    ## Creates necessary services for development in background
	docker-compose -f ./devops/docker-compose.services.yml up -d

services-down:      ## Creates necessary services for development
	docker-compose -f ./devops/docker-compose.services.yml down

dev-run:       ## Run app locally
	docker-compose -f ./devops/docker-compose.yml up --force-recreate

dev-down:      ## Tear down app
	docker-compose -f ./devops/docker-compose.yml down

clean: services-down dev-down
	rm -rf ./devops/data && rm -rf ./devops/data-audit && rm -rf ./devops/data-inheritance