#! /bin/bash

podExist=$(kubectl get pod | grep -w "sql")
var_length=${#podExist}


if (( ${var_length}==0)); then
kubectl create -f podSQL.yaml
fi

