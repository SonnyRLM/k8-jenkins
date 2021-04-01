#! /bin/bash
sudo apt update

sudo apt install awscli -y

echo ${AWS_SECRET_ACCESS_KEY}

aws configure set aws_access_key_id AKIAR6KCHRCQFY6CEF2T
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
