#! /bin/bash

sudo apt install awscli

echo ${AWS_SECRET_ACCESS_KEY}

aws configure set aws_access_key_id
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
