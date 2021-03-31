#! /bin/bash

# Script to deploy eks cluster 


create_cluster() {
	echo 'launching cluster'
	eksctl create cluster \
	--name DemoCluster \
	--region eu-west-2 \
	--nodegroup-name DemoNodes \
	--nodes 2 \
	--nodes-min 2 \
	--nodes-max 3 \
	--node-type t3.medium \
	--with-oidc \
	--ssh-access \
	--ssh-public-key Terraform Pair \
	--managed
}


create_cluster()
