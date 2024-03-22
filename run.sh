#! /bin/bash

cd scripts
sh start_minikube.sh
sh setup_helm.sh
sh helm_install.sh
sh get_credentials.sh
sh port_forward.sh
