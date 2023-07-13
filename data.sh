#!/bin/bash
sudo yum install git -y
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
sudo git clone https://saiyerra831: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@github.com/saiyerra831/tf-abalone.git
cd tf-abalone
sudo terraform init -upgrade
sudo terraform validate
sudo terraform plan
sudo terraform apply --auto-approve -lock=flase
