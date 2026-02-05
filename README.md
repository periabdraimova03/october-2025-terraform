### Create terraform.tfvars files

region = "us-east-1"
key_name = "virginia-key"
vpc_cidr = "172.31.0.0/16"
subnet1_cidr = "172.31.1.0/24"
subnet2_cidr = "172.31.2.0/24"
subnet3_cidr = "172.31.3.0/24"
port = [3306, 443]