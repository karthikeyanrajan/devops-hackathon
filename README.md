# devops-hackathon

#To install terraform on Amazon ec2 ami

#Run the following commands

sudo yum install -y yum-utils shadow-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

sudo yum -y install terraform


# To init the terraform

terraform init

#To run terraform 

terraform apply
