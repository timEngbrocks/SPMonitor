#! /bin/bash

helm install minio minio/minio -f ../minio/values.yaml

helm install mimir ../mimir/

helm install prometheus prometheus-community/prometheus -f ../prometheus/values.yaml

#helm install grafana-agent-operator grafana/grafana-agent-operator -f ../grafana-agent-operator/values.yaml

helm install grafana grafana/grafana -f ../grafana/values.yaml
