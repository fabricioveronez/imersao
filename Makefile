start: kafka
	skaffold dev

kafka: k3d_create
	kubectl apply -f ./04-k8s-deploy/01-kafka/deployment.yaml
	kubectl apply -f ./04-k8s-deploy/02-worker/deployment.yaml

k3d_create:
	k3d cluster create meucluster -p "3000:30000@loadbalancer" -p "3001:30001@loadbalancer" -p "9021:30002@loadbalancer"

k3d_delete:
	k3d cluster delete meucluster

clear: k3d_delete 
