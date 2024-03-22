#! /bin/bash

cd scripts

sh helm_uninstall.sh
sh stop_minikube.sh
sh delete_minikube.sh
