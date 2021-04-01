#! /bin/bash

podExist=$(kubectl get pod | grep -w "sql")
var_length=${#podExist}


if (( ${var_length} )); then
kubectl create -f podSQL.yaml
fi

