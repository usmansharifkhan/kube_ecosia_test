.PHONY: help prereq start test stop mac_setup


.DEFAULT: help
help:
	@echo "make start"
	@echo "       runs a minikube instance with ingress controller enabled. The manifest are also deployed after docker image is built"
	@echo "make stop"
	@echo "       stops the minikube instance"
	@echo "make test"
	@echo "       runs curl command to check the ingress flow"
	@echo "make mac_setup"
	@echo "       Installs minikube on Mac OS"

prereq:
	minikube stop

start: prereq
	chmod +x start.sh
	./start.sh

test:
	chmod +x test.sh
	./test.sh

stop: prereq

mac_setup:
	brew install make minikube


