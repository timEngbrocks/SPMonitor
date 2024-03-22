#! /bin/bash

helm uninstall grafana

helm uninstall prometheus

helm uninstall mimir

helm uninstall minio

helm uninstall grafana-agent-operator

helm uninstall angular-conduit