#! /bin/bash

# POD_NAME=$(kubectl get pods --namespace default -l "release=minio" -o jsonpath="{.items[0].metadata.name}")
# nohup kubectl port-forward $POD_NAME 9000 > /dev/null 2>&1 &
# export MC_HOST_minio_local=http://$(kubectl get secret --namespace default minio -o jsonpath="{.data.rootUser}" | base64 --decode):$(kubectl get secret --namespace default minio -o jsonpath="{.data.rootPassword}" | base64 --decode)@localhost:9000
# mc ls minio_local

# export POD_NAME=$(kubectl get pods --namespace default -l "app=prometheus,component=server" -o jsonpath="{.items[0].metadata.name}")
# nohup kubectl --namespace default port-forward $POD_NAME 9090 > /dev/null 2>&1 &

# export POD_NAME=$(kubectl get pods --namespace default -l "app=prometheus,component=" -o jsonpath="{.items[0].metadata.name}")
# nohup kubectl --namespace default port-forward $POD_NAME 9093 > /dev/null 2>&1 &

export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")
nohup kubectl --namespace default port-forward $POD_NAME 3000 > /dev/null 2>&1 &