CLUSTER_NAME=dev-lab
CONFIG_FILE=kind-config.yaml

.PHONY: up down reset status k9s

up:
	@echo "Creating Kind cluster..."
	kind create cluster --config $(CONFIG_FILE)
	@echo "Cluster status:"
	kubectl get nodes -o wide
	@echo "Ready. Try: make k9s"

down:
	@echo "Deleting Kind cluster..."
	kind delete cluster --name $(CLUSTER_NAME)

reset: down up

status:
	kubectl cluster-info
	kubectl get nodes -o wide
	kubectl get pods -A

k9s:
	k9s --context kind-$(CLUSTER_NAME)
