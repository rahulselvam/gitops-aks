variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the EKS cluster into."
  default     = "us-east-1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster."
  default     = "production-eks"
}

variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for the EKS control plane."
  default     = "1.30"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "The AWS Availability Zones to deploy subnets into."
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the private subnets where EKS nodes live."
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the public subnets where ELBs are exposed."
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "node_instance_types" {
  type        = list(string)
  description = "The EC2 instance types for the managed node group."
  default     = ["t3.medium"]
}

variable "node_capacity_type" {
  type        = string
  description = "The capacity type for the EKS nodes (ON_DEMAND or SPOT)."
  default     = "ON_DEMAND"
}

variable "node_desired_size" {
  type        = number
  description = "Desired number of worker nodes."
  default     = 2
}

variable "node_min_size" {
  type        = number
  description = "Minimum number of worker nodes for auto-scaling."
  default     = 1
}

variable "node_max_size" {
  type        = number
  description = "Maximum number of worker nodes for auto-scaling."
  default     = 4
}