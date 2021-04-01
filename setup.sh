#! /bin/bash

# Script to deploy eks cluster 
clusterExist=$(eksctl get cluster | grep -w "JenkinsCluster5")
var_length=${#clusterExist}

echo ${var_length}

if (( ${var_length}==1 )); then
echo 'launching cluster'
eksctl create cluster --name JenkinsCluster5 --region eu-west-2 --nodegroup-name DemoNodes --nodes 2 --nodes-min 2 --nodes-max 3 --node-type t2.micro --with-oidc --ssh-access --ssh-public-key TerraformPair --managed
fi
