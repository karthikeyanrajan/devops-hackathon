# Launch the amazon Linux

#copy and paste this script 
#run with cmd - bash getterraform.sh

#To install git
sudo yum install git

#To install Terraform

sudo yum install -y yum-utils shadow-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

sudo yum -y install terraform

#Configure aws cli
mkdir /home/ec2-user/.aws/
echo -e "[default]\nregion = us-east-1\noutput = json" > config
echo -e "[default]\naws_access_key_id = AKIAZSNT4FTT4P64QTEK\naws_secret_access_key = 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" > credentials

#To run terraform
git clone https://github.com/karthikeyanrajan/devops-hackathon.git
cd /home/ec2-user/devops-hackathon
terraform init
ls
echo "##### terraform is playing ####"
terraform apply -auto-approve



