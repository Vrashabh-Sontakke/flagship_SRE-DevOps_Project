name = "dev-env"
region = "ap-south-1"
cidr_block = "10.0.0.0/16"
public_cidr_block = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_cidr_block = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
num_nat_gateways = 3
