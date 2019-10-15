sudo sed -i 's/target_machine/'$machine_type'/' terraform.tfvars
echo 'export time=$(date +"%m%d%y%H%M%S")' >> ~/.bash_profile
source ~/.bash_profile
sudo sed -i 's/timestamp/'$time'/' terraform.tfvars
sudo sed -i 's/vmname/'$stack_name'/' terraform.tfvars
sudo sed -i 's/stacked/'$stack'/' terraform.tfvars


terraform init
terrform plan
terraform apply --auto-approve
