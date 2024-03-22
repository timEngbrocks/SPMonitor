#! /bin/bash

minikube start \
  --memory 6144 \
  --cpus 4

eval $(minikube docker-env)

minikube addons enable default-storageclass
minikube addons enable storage-provisioner
minikube addons enable ingress
minikube addons enable metrics-server
