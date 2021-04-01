#! /bin/bash

# General modules 
sudo apt update
sudo apt install -y unzip

# Install and configure AWSCLI
sudo apt install awscli -y

aws configure set aws_access_key_id AKIAR6KCHRCQFY6CEF2T
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region eu-west-2


# Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"| tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin


# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo 'Requirements Installed'
