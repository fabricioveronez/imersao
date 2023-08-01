#!/bin/bash
k3d cluster create meucluster --servers 1 --agents 3
kubectl apply -f ./kafka/kafka-operator.yaml
sleep 30
kubectl apply -f ./kafka/kafka-persistent-single.yaml
