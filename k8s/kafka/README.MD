# Instalação do Strimzi 

### Via Helm

``` Bash
kubectl create namespace kafka && kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
```

``` Bash
kubectl wait kafka/home-broker --for=condition=Ready --timeout=300s 
``` 

``` Bash
k3d cluster create --servers 1 --agents 3
```