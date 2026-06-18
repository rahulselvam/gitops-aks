# Cluster Customization
cluster_name    = "test-eks"
cluster_version = "1.30"
aws_region      = "us-east-2"

# Network Configurations
vpc_cidr           = "10.0.0.0/16"
availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

# Compute / Worker Nodes Configurations
node_instance_types = ["t3.medium"]
node_capacity_type  = "ON_DEMAND"
node_desired_size   = 2
node_min_size       = 1
node_max_size       = 4