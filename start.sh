#!/usr/bin/env sh

minikube start
minikube addons enable ingress

eval $(minikube docker-env)
docker build -t rest_server:0.1 .

cd manifests
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
cd ..

