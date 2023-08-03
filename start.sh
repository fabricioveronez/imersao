#!/bin/bash
k3d cluster create meucluster --servers 1 --agents 3 -p "3000:30000@loadbalancer" -p "3001:30001@loadbalancer"
kubectl apply -f ./kafka/kafka-operator.yaml
sleep 30
kubectl apply -f ./kafka/kafka-persistent-single.yaml
