# Launch the amazon Linux

#copy and paste this script 
#run with cmd - bash getterraform.sh

#To install git
sudo yum install git

#To install Terraform

sudo yum install -y yum-utils shadow-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

sudo yum -y install terraform

#Configure aws cli before run this

#To run terraform
git clone https://github.com/karthikeyanrajan/devops-hackathon.git
cd /home/ec2-user/devops-hackathon
terraform init
ls
echo "##### terraform is playing ####"
terraform apply -auto-approve



